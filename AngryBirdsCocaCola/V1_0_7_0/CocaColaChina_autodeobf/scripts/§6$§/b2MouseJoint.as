package §6$§
{
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2TimeStep;
   import §<!8§.b2Mat22;
   import §<!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §@!M§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §=6§:b2Vec2;
      
      private var §%o§:b2Vec2;
      
      private var §7!P§:b2Vec2;
      
      private var § !4§:b2Mat22;
      
      private var §;!W§:b2Vec2;
      
      private var §=!O§:Number;
      
      private var §&k§:Number;
      
      private var §%!W§:Number;
      
      private var §<!"§:Number;
      
      private var §,!D§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§@!M§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§=6§ = new b2Vec2();
         this.§%o§ = new b2Vec2();
         this.§7!P§ = new b2Vec2();
         this.§ !4§ = new b2Mat22();
         this.§;!W§ = new b2Vec2();
         super(param1);
         this.§%o§.SetV(param1.target);
         _loc2_ = this.§%o§.x - b2internal::%!#.m_xf.position.x;
         var _loc3_:Number = this.§%o§.y - b2internal::%!#.m_xf.position.y;
         _loc4_ = b2internal::%!#.m_xf.R;
         this.§=6§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§=6§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§=!O§ = param1.§?M§;
         this.§7!P§.§`§();
         this.§&k§ = param1.§#;§;
         this.§%!W§ = param1.§8u§;
         this.§<!"§ = 0;
         this.§,!D§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§%o§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!#.GetWorldPoint(this.§=6§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§7!P§.x,param1 * this.§7!P§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!!<§() : b2Vec2
      {
         return this.§%o§;
      }
      
      public function §>v§(param1:b2Vec2) : void
      {
         if(b2internal::%!#.IsAwake() == false)
         {
            b2internal::%!#.SetAwake(true);
         }
         this.§%o§ = param1;
      }
      
      public function §`!8§() : Number
      {
         return this.§=!O§;
      }
      
      public function §[!?§(param1:Number) : void
      {
         this.§=!O§ = param1;
      }
      
      public function §=S§() : Number
      {
         return this.§&k§;
      }
      
      public function §7!T§(param1:Number) : void
      {
         this.§&k§ = param1;
      }
      
      public function §39§() : Number
      {
         return this.§%!W§;
      }
      
      public function §,T§(param1:Number) : void
      {
         this.§%!W§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::%!#;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§&k§;
         var _loc5_:Number = 2 * _loc3_ * this.§%!W§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§,!D§ = param1.§5!+§ * (_loc5_ + param1.§5!+§ * _loc6_);
         this.§,!D§ = this.§,!D§ != 0 ? Number(1 / this.§,!D§) : Number(0);
         this.§<!"§ = param1.§5!+§ * _loc6_ * this.§,!D§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§=6§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§=6§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§0,§;
         _loc12_ = _loc2_.§'!=§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§@!M§.§@h§(this.K1);
         this.§@!M§.§,R§(this.K2);
         this.§@!M§.col1.x += this.§,!D§;
         this.§@!M§.col2.y += this.§,!D§;
         this.§@!M§.§!!X§(this.§ !4§);
         this.§;!W§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§%o§.x;
         this.§;!W§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§%o§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§7!P§.x *= param1.§8!W§;
         this.§7!P§.y *= param1.§8!W§;
         _loc2_.§3s§.x += _loc11_ * this.§7!P§.x;
         _loc2_.§3s§.y += _loc11_ * this.§7!P§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§7!P§.y - _loc9_ * this.§7!P§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::%!#;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§=6§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§=6§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§3s§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§3s§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§ !4§;
         _loc4_ = _loc8_ + this.§<!"§ * this.§;!W§.x + this.§,!D§ * this.§7!P§.x;
         _loc5_ = _loc9_ + this.§<!"§ * this.§;!W§.y + this.§,!D§ * this.§7!P§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§7!P§.x;
         var _loc13_:Number = this.§7!P§.y;
         this.§7!P§.x += _loc10_;
         this.§7!P§.y += _loc11_;
         var _loc14_:Number = param1.§5!+§ * this.§=!O§;
         if(this.§7!P§.§9U§() > _loc14_ * _loc14_)
         {
            this.§7!P§.§8;§(_loc14_ / this.§7!P§.§^M§());
         }
         _loc10_ = this.§7!P§.x - _loc12_;
         _loc11_ = this.§7!P§.y - _loc13_;
         _loc2_.§3s§.x += _loc2_.§0,§ * _loc10_;
         _loc2_.§3s§.y += _loc2_.§0,§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§'!=§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
