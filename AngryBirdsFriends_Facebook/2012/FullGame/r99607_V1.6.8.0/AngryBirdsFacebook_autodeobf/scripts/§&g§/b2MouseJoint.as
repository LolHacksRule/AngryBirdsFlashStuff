package §&g§
{
   import § !k§.b2Body;
   import § !k§.b2TimeStep;
   import §!"8§.b2Mat22;
   import §!"8§.b2Vec2;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §49§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §+!Z§:b2Vec2;
      
      private var §=%§:b2Vec2;
      
      private var §"!J§:b2Vec2;
      
      private var §''§:b2Mat22;
      
      private var §]!=§:b2Vec2;
      
      private var §`!0§:Number;
      
      private var §=+§:Number;
      
      private var §,!k§:Number;
      
      private var §-?§:Number;
      
      private var §+!;§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§49§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§+!Z§ = new b2Vec2();
         this.§=%§ = new b2Vec2();
         this.§"!J§ = new b2Vec2();
         this.§''§ = new b2Mat22();
         this.§]!=§ = new b2Vec2();
         super(param1);
         this.§=%§.SetV(param1.target);
         _loc2_ = this.§=%§.x - b2internal:: k.m_xf.position.x;
         var _loc3_:Number = this.§=%§.y - b2internal:: k.m_xf.position.y;
         _loc4_ = b2internal:: k.m_xf.R;
         this.§+!Z§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§+!Z§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§`!0§ = param1.§27§;
         this.§"!J§.§]!;§();
         this.§=+§ = param1.§3"7§;
         this.§,!k§ = param1.§8!D§;
         this.§-?§ = 0;
         this.§+!;§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§=%§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: k.GetWorldPoint(this.§+!Z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§"!J§.x,param1 * this.§"!J§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §`3§() : b2Vec2
      {
         return this.§=%§;
      }
      
      public function §5A§(param1:b2Vec2) : void
      {
         if(b2internal:: k.IsAwake() == false)
         {
            b2internal:: k.SetAwake(true);
         }
         this.§=%§ = param1;
      }
      
      public function §7!=§() : Number
      {
         return this.§`!0§;
      }
      
      public function §'";§(param1:Number) : void
      {
         this.§`!0§ = param1;
      }
      
      public function § " §() : Number
      {
         return this.§=+§;
      }
      
      public function §3!§(param1:Number) : void
      {
         this.§=+§ = param1;
      }
      
      public function §'!D§() : Number
      {
         return this.§,!k§;
      }
      
      public function §2!O§(param1:Number) : void
      {
         this.§,!k§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal:: k;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§=+§;
         var _loc5_:Number = 2 * _loc3_ * this.§,!k§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§+!;§ = param1.§7!x§ * (_loc5_ + param1.§7!x§ * _loc6_);
         this.§+!;§ = this.§+!;§ != 0 ? Number(1 / this.§+!;§) : Number(0);
         this.§-?§ = param1.§7!x§ * _loc6_ * this.§+!;§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§+!Z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§+!Z§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§^1§;
         _loc12_ = _loc2_.§?y§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§49§.§']§(this.K1);
         this.§49§.§,C§(this.K2);
         this.§49§.col1.x += this.§+!;§;
         this.§49§.col2.y += this.§+!;§;
         this.§49§.§%!v§(this.§''§);
         this.§]!=§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§=%§.x;
         this.§]!=§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§=%§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§"!J§.x *= param1.§=G§;
         this.§"!J§.y *= param1.§=G§;
         _loc2_.§>! §.x += _loc11_ * this.§"!J§.x;
         _loc2_.§>! §.y += _loc11_ * this.§"!J§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§"!J§.y - _loc9_ * this.§"!J§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal:: k;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§+!Z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§+!Z§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§>! §.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§>! §.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§''§;
         _loc4_ = _loc8_ + this.§-?§ * this.§]!=§.x + this.§+!;§ * this.§"!J§.x;
         _loc5_ = _loc9_ + this.§-?§ * this.§]!=§.y + this.§+!;§ * this.§"!J§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§"!J§.x;
         var _loc13_:Number = this.§"!J§.y;
         this.§"!J§.x += _loc10_;
         this.§"!J§.y += _loc11_;
         var _loc14_:Number = param1.§7!x§ * this.§`!0§;
         if(this.§"!J§.§1]§() > _loc14_ * _loc14_)
         {
            this.§"!J§.§@T§(_loc14_ / this.§"!J§.§7!;§());
         }
         _loc10_ = this.§"!J§.x - _loc12_;
         _loc11_ = this.§"!J§.y - _loc13_;
         _loc2_.§>! §.x += _loc2_.§^1§ * _loc10_;
         _loc2_.§>! §.y += _loc2_.§^1§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§?y§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
