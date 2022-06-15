package §@!O§
{
   import §0H§.b2internal;
   import §0m§.b2Mat22;
   import §0m§.b2Vec2;
   import §=#n§.b2Body;
   import §=#n§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §[#'§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var § !l§:b2Vec2;
      
      private var §&X§:b2Vec2;
      
      private var §?$$§:b2Vec2;
      
      private var §8!L§:b2Mat22;
      
      private var §@!h§:b2Vec2;
      
      private var §,u§:Number;
      
      private var §2!#§:Number;
      
      private var §=!j§:Number;
      
      private var §1#4§:Number;
      
      private var §@#8§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§[#'§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§ !l§ = new b2Vec2();
         this.§&X§ = new b2Vec2();
         this.§?$$§ = new b2Vec2();
         this.§8!L§ = new b2Mat22();
         this.§@!h§ = new b2Vec2();
         super(param1);
         this.§&X§.SetV(param1.target);
         _loc2_ = this.§&X§.x - b2internal::%;.m_xf.position.x;
         var _loc3_:Number = this.§&X§.y - b2internal::%;.m_xf.position.y;
         _loc4_ = b2internal::%;.m_xf.R;
         this.§ !l§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§ !l§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§,u§ = param1.§^#L§;
         this.§?$$§.§,[§();
         this.§2!#§ = param1.§3";§;
         this.§=!j§ = param1.dampingRatio;
         this.§1#4§ = 0;
         this.§@#8§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§&X§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%;.GetWorldPoint(this.§ !l§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§?$$§.x,param1 * this.§?$$§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function § "I§() : b2Vec2
      {
         return this.§&X§;
      }
      
      public function § "5§(param1:b2Vec2) : void
      {
         if(b2internal::%;.IsAwake() == false)
         {
            b2internal::%;.SetAwake(true);
         }
         this.§&X§ = param1;
      }
      
      public function §+!C§() : Number
      {
         return this.§,u§;
      }
      
      public function §'"2§(param1:Number) : void
      {
         this.§,u§ = param1;
      }
      
      public function §-#Z§() : Number
      {
         return this.§2!#§;
      }
      
      public function §"0§(param1:Number) : void
      {
         this.§2!#§ = param1;
      }
      
      public function §1#C§() : Number
      {
         return this.§=!j§;
      }
      
      public function §^!I§(param1:Number) : void
      {
         this.§=!j§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::%;;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§2!#§;
         var _loc5_:Number = 2 * _loc3_ * this.§=!j§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§@#8§ = param1.dt * (_loc5_ + param1.dt * _loc6_);
         this.§@#8§ = this.§@#8§ != 0 ? Number(1 / this.§@#8§) : Number(0);
         this.§1#4§ = param1.dt * _loc6_ * this.§@#8§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§ !l§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ !l§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§7"P§;
         _loc12_ = _loc2_.§3!F§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§[#'§.§"#6§(this.K1);
         this.§[#'§.§0#X§(this.K2);
         this.§[#'§.col1.x += this.§@#8§;
         this.§[#'§.col2.y += this.§@#8§;
         this.§[#'§.§>$7§(this.§8!L§);
         this.§@!h§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§&X§.x;
         this.§@!h§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§&X§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§?$$§.x *= param1.§'"D§;
         this.§?$$§.y *= param1.§'"D§;
         _loc2_.§'"_§.x += _loc11_ * this.§?$$§.x;
         _loc2_.§'"_§.y += _loc11_ * this.§?$$§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§?$$§.y - _loc9_ * this.§?$$§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::%;;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§ !l§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ !l§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§'"_§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§'"_§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§8!L§;
         _loc4_ = _loc8_ + this.§1#4§ * this.§@!h§.x + this.§@#8§ * this.§?$$§.x;
         _loc5_ = _loc9_ + this.§1#4§ * this.§@!h§.y + this.§@#8§ * this.§?$$§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§?$$§.x;
         var _loc13_:Number = this.§?$$§.y;
         this.§?$$§.x += _loc10_;
         this.§?$$§.y += _loc11_;
         var _loc14_:Number = param1.dt * this.§,u§;
         if(this.§?$$§.§>#%§() > _loc14_ * _loc14_)
         {
            this.§?$$§.§2#<§(_loc14_ / this.§?$$§.Length());
         }
         _loc10_ = this.§?$$§.x - _loc12_;
         _loc11_ = this.§?$$§.y - _loc13_;
         _loc2_.§'"_§.x += _loc2_.§7"P§ * _loc10_;
         _loc2_.§'"_§.y += _loc2_.§7"P§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§3!F§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
