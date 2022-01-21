package §;N§
{
   import §!R§.b2Mat22;
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §1B§.b2TimeStep;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §7s§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var § !=§:b2Vec2;
      
      private var §`+§:b2Vec2;
      
      private var §%z§:b2Vec2;
      
      private var §+!C§:b2Mat22;
      
      private var §'6§:b2Vec2;
      
      private var §6!1§:Number;
      
      private var §=V§:Number;
      
      private var §8o§:Number;
      
      private var §>k§:Number;
      
      private var §,!+§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§7s§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§ !=§ = new b2Vec2();
         this.§`+§ = new b2Vec2();
         this.§%z§ = new b2Vec2();
         this.§+!C§ = new b2Mat22();
         this.§'6§ = new b2Vec2();
         super(param1);
         this.§`+§.SetV(param1.target);
         _loc2_ = this.§`+§.x - b2internal::8[.m_xf.position.x;
         var _loc3_:Number = this.§`+§.y - b2internal::8[.m_xf.position.y;
         _loc4_ = b2internal::8[.m_xf.R;
         this.§ !=§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§ !=§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§6!1§ = param1.§@!_§;
         this.§%z§.§"9§();
         this.§=V§ = param1.§'!X§;
         this.§8o§ = param1.§7a§;
         this.§>k§ = 0;
         this.§,!+§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§`+§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8[.GetWorldPoint(this.§ !=§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§%z§.x,param1 * this.§%z§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §7i§() : b2Vec2
      {
         return this.§`+§;
      }
      
      public function §;K§(param1:b2Vec2) : void
      {
         if(b2internal::8[.IsAwake() == false)
         {
            b2internal::8[.SetAwake(true);
         }
         this.§`+§ = param1;
      }
      
      public function §,!-§() : Number
      {
         return this.§6!1§;
      }
      
      public function §25§(param1:Number) : void
      {
         this.§6!1§ = param1;
      }
      
      public function §"!8§() : Number
      {
         return this.§=V§;
      }
      
      public function §4p§(param1:Number) : void
      {
         this.§=V§ = param1;
      }
      
      public function §,2§() : Number
      {
         return this.§8o§;
      }
      
      public function § f§(param1:Number) : void
      {
         this.§8o§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::8[;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§=V§;
         var _loc5_:Number = 2 * _loc3_ * this.§8o§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§,!+§ = param1.§#"§ * (_loc5_ + param1.§#"§ * _loc6_);
         this.§,!+§ = this.§,!+§ != 0 ? Number(1 / this.§,!+§) : Number(0);
         this.§>k§ = param1.§#"§ * _loc6_ * this.§,!+§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§ !=§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ !=§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§#@§;
         _loc12_ = _loc2_.§<3§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§7s§.§[!n§(this.K1);
         this.§7s§.§"!O§(this.K2);
         this.§7s§.col1.x += this.§,!+§;
         this.§7s§.col2.y += this.§,!+§;
         this.§7s§.§6T§(this.§+!C§);
         this.§'6§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§`+§.x;
         this.§'6§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§`+§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§%z§.x *= param1.§;%§;
         this.§%z§.y *= param1.§;%§;
         _loc2_.§5!m§.x += _loc11_ * this.§%z§.x;
         _loc2_.§5!m§.y += _loc11_ * this.§%z§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§%z§.y - _loc9_ * this.§%z§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::8[;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§ !=§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ !=§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§5!m§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§5!m§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§+!C§;
         _loc4_ = _loc8_ + this.§>k§ * this.§'6§.x + this.§,!+§ * this.§%z§.x;
         _loc5_ = _loc9_ + this.§>k§ * this.§'6§.y + this.§,!+§ * this.§%z§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§%z§.x;
         var _loc13_:Number = this.§%z§.y;
         this.§%z§.x += _loc10_;
         this.§%z§.y += _loc11_;
         var _loc14_:Number = param1.§#"§ * this.§6!1§;
         if(this.§%z§.§+!!§() > _loc14_ * _loc14_)
         {
            this.§%z§.§!!L§(_loc14_ / this.§%z§.§!I§());
         }
         _loc10_ = this.§%z§.x - _loc12_;
         _loc11_ = this.§%z§.y - _loc13_;
         _loc2_.§5!m§.x += _loc2_.§#@§ * _loc10_;
         _loc2_.§5!m§.y += _loc2_.§#@§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§<3§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
