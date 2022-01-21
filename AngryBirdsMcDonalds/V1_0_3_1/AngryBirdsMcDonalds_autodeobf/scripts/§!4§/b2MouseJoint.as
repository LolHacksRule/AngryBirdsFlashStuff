package §!4§
{
   import §&x§.b2Body;
   import §&x§.b2TimeStep;
   import §0,§.b2Mat22;
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §3%§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §+Z§:b2Vec2;
      
      private var §;!D§:b2Vec2;
      
      private var §8!§:b2Vec2;
      
      private var §+C§:b2Mat22;
      
      private var §%k§:b2Vec2;
      
      private var §@!J§:Number;
      
      private var §5!H§:Number;
      
      private var §4B§:Number;
      
      private var §`!$§:Number;
      
      private var §3]§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§3%§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§+Z§ = new b2Vec2();
         this.§;!D§ = new b2Vec2();
         this.§8!§ = new b2Vec2();
         this.§+C§ = new b2Mat22();
         this.§%k§ = new b2Vec2();
         super(param1);
         this.§;!D§.SetV(param1.target);
         _loc2_ = this.§;!D§.x - b2internal::"!.m_xf.position.x;
         var _loc3_:Number = this.§;!D§.y - b2internal::"!.m_xf.position.y;
         _loc4_ = b2internal::"!.m_xf.R;
         this.§+Z§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§+Z§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§@!J§ = param1.§54§;
         this.§8!§.§ !b§();
         this.§5!H§ = param1.§+m§;
         this.§4B§ = param1.§3Q§;
         this.§`!$§ = 0;
         this.§3]§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§;!D§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!.GetWorldPoint(this.§+Z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!§.x,param1 * this.§8!§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §>!e§() : b2Vec2
      {
         return this.§;!D§;
      }
      
      public function §'!N§(param1:b2Vec2) : void
      {
         if(b2internal::"!.IsAwake() == false)
         {
            b2internal::"!.SetAwake(true);
         }
         this.§;!D§ = param1;
      }
      
      public function §-!;§() : Number
      {
         return this.§@!J§;
      }
      
      public function §!W§(param1:Number) : void
      {
         this.§@!J§ = param1;
      }
      
      public function §!r§() : Number
      {
         return this.§5!H§;
      }
      
      public function §8K§(param1:Number) : void
      {
         this.§5!H§ = param1;
      }
      
      public function §&!d§() : Number
      {
         return this.§4B§;
      }
      
      public function §]^§(param1:Number) : void
      {
         this.§4B§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::"!;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§5!H§;
         var _loc5_:Number = 2 * _loc3_ * this.§4B§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§3]§ = param1.§"!?§ * (_loc5_ + param1.§"!?§ * _loc6_);
         this.§3]§ = this.§3]§ != 0 ? Number(1 / this.§3]§) : Number(0);
         this.§`!$§ = param1.§"!?§ * _loc6_ * this.§3]§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§+Z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§+Z§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§&l§;
         _loc12_ = _loc2_.§]!Q§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§3%§.§42§(this.K1);
         this.§3%§.§7s§(this.K2);
         this.§3%§.col1.x += this.§3]§;
         this.§3%§.col2.y += this.§3]§;
         this.§3%§.§<u§(this.§+C§);
         this.§%k§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§;!D§.x;
         this.§%k§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§;!D§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§8!§.x *= param1.§,!m§;
         this.§8!§.y *= param1.§,!m§;
         _loc2_.§"M§.x += _loc11_ * this.§8!§.x;
         _loc2_.§"M§.y += _loc11_ * this.§8!§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§8!§.y - _loc9_ * this.§8!§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::"!;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§+Z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§+Z§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§"M§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§"M§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§+C§;
         _loc4_ = _loc8_ + this.§`!$§ * this.§%k§.x + this.§3]§ * this.§8!§.x;
         _loc5_ = _loc9_ + this.§`!$§ * this.§%k§.y + this.§3]§ * this.§8!§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§8!§.x;
         var _loc13_:Number = this.§8!§.y;
         this.§8!§.x += _loc10_;
         this.§8!§.y += _loc11_;
         var _loc14_:Number = param1.§"!?§ * this.§@!J§;
         if(this.§8!§.§2!j§() > _loc14_ * _loc14_)
         {
            this.§8!§.§5D§(_loc14_ / this.§8!§.§?!5§());
         }
         _loc10_ = this.§8!§.x - _loc12_;
         _loc11_ = this.§8!§.y - _loc13_;
         _loc2_.§"M§.x += _loc2_.§&l§ * _loc10_;
         _loc2_.§"M§.y += _loc2_.§&l§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§]!Q§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
