package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §&z§:b2Vec2;
      
      private var §]6§:b2Vec2;
      
      private var §0"3§:b2Vec2;
      
      private var §""$§:b2Mat22;
      
      private var §]E§:b2Vec2;
      
      private var §"!C§:Number;
      
      private var §4"3§:Number;
      
      private var §0R§:Number;
      
      private var §+""§:Number;
      
      private var §"!U§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§&z§ = new b2Vec2();
         this.§]6§ = new b2Vec2();
         this.§0"3§ = new b2Vec2();
         this.§""$§ = new b2Mat22();
         this.§]E§ = new b2Vec2();
         super(param1);
         this.§]6§.SetV(param1.target);
         _loc2_ = this.§]6§.x - b2internal::?H.m_xf.position.x;
         var _loc3_:Number = this.§]6§.y - b2internal::?H.m_xf.position.y;
         _loc4_ = b2internal::?H.m_xf.R;
         this.§&z§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§&z§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§"!C§ = param1.§1^§;
         this.§0"3§.§@!d§();
         this.§4"3§ = param1.§^J§;
         this.§0R§ = param1.dampingRatio;
         this.§+""§ = 0;
         this.§"!U§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§]6§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.§&z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0"3§.x,param1 * this.§0"3§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §'!R§() : b2Vec2
      {
         return this.§]6§;
      }
      
      public function §=8§(param1:b2Vec2) : void
      {
         if(b2internal::?H.IsAwake() == false)
         {
            b2internal::?H.SetAwake(true);
         }
         this.§]6§ = param1;
      }
      
      public function §#J§() : Number
      {
         return this.§"!C§;
      }
      
      public function §]!E§(param1:Number) : void
      {
         this.§"!C§ = param1;
      }
      
      public function §;!$§() : Number
      {
         return this.§4"3§;
      }
      
      public function §#2§(param1:Number) : void
      {
         this.§4"3§ = param1;
      }
      
      public function §7!b§() : Number
      {
         return this.§0R§;
      }
      
      public function §&3§(param1:Number) : void
      {
         this.§0R§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::?H;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§4"3§;
         var _loc5_:Number = 2 * _loc3_ * this.§0R§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§"!U§ = param1.§2^§ * (_loc5_ + param1.§2^§ * _loc6_);
         this.§"!U§ = this.§"!U§ != 0 ? Number(1 / this.§"!U§) : Number(0);
         this.§+""§ = param1.§2^§ * _loc6_ * this.§"!U§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§&z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§&z§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§6!W§;
         _loc12_ = _loc2_.§<!%§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§?"4§(this.K1);
         this.K.§@3§(this.K2);
         this.K.col1.x += this.§"!U§;
         this.K.col2.y += this.§"!U§;
         this.K.§-r§(this.§""$§);
         this.§]E§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§]6§.x;
         this.§]E§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§]6§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§0"3§.x *= param1.§-I§;
         this.§0"3§.y *= param1.§-I§;
         _loc2_.§?o§.x += _loc11_ * this.§0"3§.x;
         _loc2_.§?o§.y += _loc11_ * this.§0"3§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§0"3§.y - _loc9_ * this.§0"3§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::?H;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§&z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§&z§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§?o§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§?o§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§""$§;
         _loc4_ = _loc8_ + this.§+""§ * this.§]E§.x + this.§"!U§ * this.§0"3§.x;
         _loc5_ = _loc9_ + this.§+""§ * this.§]E§.y + this.§"!U§ * this.§0"3§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§0"3§.x;
         var _loc13_:Number = this.§0"3§.y;
         this.§0"3§.x += _loc10_;
         this.§0"3§.y += _loc11_;
         var _loc14_:Number = param1.§2^§ * this.§"!C§;
         if(this.§0"3§.§"z§() > _loc14_ * _loc14_)
         {
            this.§0"3§.§-!&§(_loc14_ / this.§0"3§.§2+§());
         }
         _loc10_ = this.§0"3§.x - _loc12_;
         _loc11_ = this.§0"3§.y - _loc13_;
         _loc2_.§?o§.x += _loc2_.§6!W§ * _loc10_;
         _loc2_.§?o§.y += _loc2_.§6!W§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§<!%§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
