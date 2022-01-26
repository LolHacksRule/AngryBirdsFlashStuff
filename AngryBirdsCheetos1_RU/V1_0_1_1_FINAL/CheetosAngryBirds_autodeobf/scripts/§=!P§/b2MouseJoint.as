package §=!P§
{
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2TimeStep;
   import §^q§.b2Mat22;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §@!D§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §4!>§:b2Vec2;
      
      private var §%R§:b2Vec2;
      
      private var §8!R§:b2Vec2;
      
      private var §!!@§:b2Mat22;
      
      private var §3W§:b2Vec2;
      
      private var §2!!§:Number;
      
      private var §+!?§:Number;
      
      private var §'!a§:Number;
      
      private var §2@§:Number;
      
      private var §&!^§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§@!D§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§4!>§ = new b2Vec2();
         this.§%R§ = new b2Vec2();
         this.§8!R§ = new b2Vec2();
         this.§!!@§ = new b2Mat22();
         this.§3W§ = new b2Vec2();
         super(param1);
         this.§%R§.SetV(param1.target);
         _loc2_ = this.§%R§.x - b2internal::!!c.m_xf.position.x;
         var _loc3_:Number = this.§%R§.y - b2internal::!!c.m_xf.position.y;
         _loc4_ = b2internal::!!c.m_xf.R;
         this.§4!>§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§4!>§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§2!!§ = param1.§ else§;
         this.§8!R§.§0q§();
         this.§+!?§ = param1.§&!$§;
         this.§'!a§ = param1.§@Y§;
         this.§2@§ = 0;
         this.§&!^§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§%R§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!c.GetWorldPoint(this.§4!>§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!R§.x,param1 * this.§8!R§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function § !C§() : b2Vec2
      {
         return this.§%R§;
      }
      
      public function §"t§(param1:b2Vec2) : void
      {
         if(b2internal::!!c.IsAwake() == false)
         {
            b2internal::!!c.SetAwake(true);
         }
         this.§%R§ = param1;
      }
      
      public function §;!'§() : Number
      {
         return this.§2!!§;
      }
      
      public function §#>§(param1:Number) : void
      {
         this.§2!!§ = param1;
      }
      
      public function §7!_§() : Number
      {
         return this.§+!?§;
      }
      
      public function § !&§(param1:Number) : void
      {
         this.§+!?§ = param1;
      }
      
      public function §^N§() : Number
      {
         return this.§'!a§;
      }
      
      public function §-!4§(param1:Number) : void
      {
         this.§'!a§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::!!c;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§+!?§;
         var _loc5_:Number = 2 * _loc3_ * this.§'!a§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§&!^§ = param1.§7!H§ * (_loc5_ + param1.§7!H§ * _loc6_);
         this.§&!^§ = this.§&!^§ != 0 ? Number(1 / this.§&!^§) : Number(0);
         this.§2@§ = param1.§7!H§ * _loc6_ * this.§&!^§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§4!>§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§4!>§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§5Z§;
         _loc12_ = _loc2_.§[S§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§@!D§.§=d§(this.K1);
         this.§@!D§.§'$§(this.K2);
         this.§@!D§.col1.x += this.§&!^§;
         this.§@!D§.col2.y += this.§&!^§;
         this.§@!D§.§,X§(this.§!!@§);
         this.§3W§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§%R§.x;
         this.§3W§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§%R§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§8!R§.x *= param1.§8B§;
         this.§8!R§.y *= param1.§8B§;
         _loc2_.§"!N§.x += _loc11_ * this.§8!R§.x;
         _loc2_.§"!N§.y += _loc11_ * this.§8!R§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§8!R§.y - _loc9_ * this.§8!R§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::!!c;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§4!>§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§4!>§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§"!N§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§"!N§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§!!@§;
         _loc4_ = _loc8_ + this.§2@§ * this.§3W§.x + this.§&!^§ * this.§8!R§.x;
         _loc5_ = _loc9_ + this.§2@§ * this.§3W§.y + this.§&!^§ * this.§8!R§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§8!R§.x;
         var _loc13_:Number = this.§8!R§.y;
         this.§8!R§.x += _loc10_;
         this.§8!R§.y += _loc11_;
         var _loc14_:Number = param1.§7!H§ * this.§2!!§;
         if(this.§8!R§.§ X§() > _loc14_ * _loc14_)
         {
            this.§8!R§.§=v§(_loc14_ / this.§8!R§.§[!2§());
         }
         _loc10_ = this.§8!R§.x - _loc12_;
         _loc11_ = this.§8!R§.y - _loc13_;
         _loc2_.§"!N§.x += _loc2_.§5Z§ * _loc10_;
         _loc2_.§"!N§.y += _loc2_.§5Z§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§[S§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
