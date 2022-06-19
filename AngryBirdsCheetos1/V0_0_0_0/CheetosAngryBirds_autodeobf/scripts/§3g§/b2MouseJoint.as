package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §3Y§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §9!F§:b2Vec2;
      
      private var §-!K§:b2Vec2;
      
      private var §8v§:b2Vec2;
      
      private var §#!&§:b2Mat22;
      
      private var §0I§:b2Vec2;
      
      private var §9Z§:Number;
      
      private var §"g§:Number;
      
      private var §6!L§:Number;
      
      private var §8S§:Number;
      
      private var §;!8§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§3Y§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§9!F§ = new b2Vec2();
         this.§-!K§ = new b2Vec2();
         this.§8v§ = new b2Vec2();
         this.§#!&§ = new b2Mat22();
         this.§0I§ = new b2Vec2();
         super(param1);
         this.§-!K§.SetV(param1.target);
         _loc2_ = this.§-!K§.x - b2internal::;B.m_xf.position.x;
         var _loc3_:Number = this.§-!K§.y - b2internal::;B.m_xf.position.y;
         _loc4_ = b2internal::;B.m_xf.R;
         this.§9!F§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§9!F§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§9Z§ = param1.§5!-§;
         this.§8v§.§^!#§();
         this.§"g§ = param1.§5X§;
         this.§6!L§ = param1.§@N§;
         this.§8S§ = 0;
         this.§;!8§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§-!K§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.§9!F§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8v§.x,param1 * this.§8v§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%S§() : b2Vec2
      {
         return this.§-!K§;
      }
      
      public function §8!R§(param1:b2Vec2) : void
      {
         if(b2internal::;B.IsAwake() == false)
         {
            b2internal::;B.SetAwake(true);
         }
         this.§-!K§ = param1;
      }
      
      public function §!'§() : Number
      {
         return this.§9Z§;
      }
      
      public function §]4§(param1:Number) : void
      {
         this.§9Z§ = param1;
      }
      
      public function §3K§() : Number
      {
         return this.§"g§;
      }
      
      public function §?!D§(param1:Number) : void
      {
         this.§"g§ = param1;
      }
      
      public function §,!&§() : Number
      {
         return this.§6!L§;
      }
      
      public function §8!G§(param1:Number) : void
      {
         this.§6!L§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::;B;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§"g§;
         var _loc5_:Number = 2 * _loc3_ * this.§6!L§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§;!8§ = param1.§%G§ * (_loc5_ + param1.§%G§ * _loc6_);
         this.§;!8§ = this.§;!8§ != 0 ? Number(1 / this.§;!8§) : Number(0);
         this.§8S§ = param1.§%G§ * _loc6_ * this.§;!8§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§9!F§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§9!F§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§]m§;
         _loc12_ = _loc2_.§?0§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§3Y§.§-z§(this.K1);
         this.§3Y§.§;q§(this.K2);
         this.§3Y§.col1.x += this.§;!8§;
         this.§3Y§.col2.y += this.§;!8§;
         this.§3Y§.§]!7§(this.§#!&§);
         this.§0I§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§-!K§.x;
         this.§0I§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§-!K§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§8v§.x *= param1.§#b§;
         this.§8v§.y *= param1.§#b§;
         _loc2_.§%=§.x += _loc11_ * this.§8v§.x;
         _loc2_.§%=§.y += _loc11_ * this.§8v§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§8v§.y - _loc9_ * this.§8v§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::;B;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§9!F§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§9!F§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§%=§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§%=§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§#!&§;
         _loc4_ = _loc8_ + this.§8S§ * this.§0I§.x + this.§;!8§ * this.§8v§.x;
         _loc5_ = _loc9_ + this.§8S§ * this.§0I§.y + this.§;!8§ * this.§8v§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§8v§.x;
         var _loc13_:Number = this.§8v§.y;
         this.§8v§.x += _loc10_;
         this.§8v§.y += _loc11_;
         var _loc14_:Number = param1.§%G§ * this.§9Z§;
         if(this.§8v§.§?a§() > _loc14_ * _loc14_)
         {
            this.§8v§.§?Q§(_loc14_ / this.§8v§.§8!%§());
         }
         _loc10_ = this.§8v§.x - _loc12_;
         _loc11_ = this.§8v§.y - _loc13_;
         _loc2_.§%=§.x += _loc2_.§]m§ * _loc10_;
         _loc2_.§%=§.y += _loc2_.§]m§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§?0§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
