package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var § "C§:b2Vec2;
      
      private var §]3§:b2Vec2;
      
      private var §2!_§:b2Vec2;
      
      private var §,!v§:b2Mat22;
      
      private var §4"J§:b2Vec2;
      
      private var §[%§:Number;
      
      private var §&j§:Number;
      
      private var §6!A§:Number;
      
      private var §#!K§:Number;
      
      private var §3'§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§ "C§ = new b2Vec2();
         this.§]3§ = new b2Vec2();
         this.§2!_§ = new b2Vec2();
         this.§,!v§ = new b2Mat22();
         this.§4"J§ = new b2Vec2();
         super(param1);
         this.§]3§.SetV(param1.target);
         _loc2_ = this.§]3§.x - b2internal::5!.m_xf.position.x;
         var _loc3_:Number = this.§]3§.y - b2internal::5!.m_xf.position.y;
         _loc4_ = b2internal::5!.m_xf.R;
         this.§ "C§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§ "C§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§[%§ = param1.§`"M§;
         this.§2!_§.§%y§();
         this.§&j§ = param1.§0c§;
         this.§6!A§ = param1.§6!i§;
         this.§#!K§ = 0;
         this.§3'§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§]3§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.§ "C§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§2!_§.x,param1 * this.§2!_§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §7g§() : b2Vec2
      {
         return this.§]3§;
      }
      
      public function §0!l§(param1:b2Vec2) : void
      {
         if(b2internal::5!.IsAwake() == false)
         {
            b2internal::5!.SetAwake(true);
         }
         this.§]3§ = param1;
      }
      
      public function §#!"§() : Number
      {
         return this.§[%§;
      }
      
      public function §=!x§(param1:Number) : void
      {
         this.§[%§ = param1;
      }
      
      public function §-!o§() : Number
      {
         return this.§&j§;
      }
      
      public function § !x§(param1:Number) : void
      {
         this.§&j§ = param1;
      }
      
      public function §%g§() : Number
      {
         return this.§6!A§;
      }
      
      public function §^!v§(param1:Number) : void
      {
         this.§6!A§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::5!;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§&j§;
         var _loc5_:Number = 2 * _loc3_ * this.§6!A§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§3'§ = param1.§;J§ * (_loc5_ + param1.§;J§ * _loc6_);
         this.§3'§ = this.§3'§ != 0 ? Number(1 / this.§3'§) : Number(0);
         this.§#!K§ = param1.§;J§ * _loc6_ * this.§3'§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§ "C§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ "C§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§-@§;
         _loc12_ = _loc2_.§,H§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§^D§(this.K1);
         this.K.§71§(this.K2);
         this.K.col1.x += this.§3'§;
         this.K.col2.y += this.§3'§;
         this.K.§3r§(this.§,!v§);
         this.§4"J§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§]3§.x;
         this.§4"J§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§]3§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§2!_§.x *= param1.§]'§;
         this.§2!_§.y *= param1.§]'§;
         _loc2_.§"!_§.x += _loc11_ * this.§2!_§.x;
         _loc2_.§"!_§.y += _loc11_ * this.§2!_§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§2!_§.y - _loc9_ * this.§2!_§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::5!;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§ "C§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§ "C§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§"!_§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§"!_§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§,!v§;
         _loc4_ = _loc8_ + this.§#!K§ * this.§4"J§.x + this.§3'§ * this.§2!_§.x;
         _loc5_ = _loc9_ + this.§#!K§ * this.§4"J§.y + this.§3'§ * this.§2!_§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§2!_§.x;
         var _loc13_:Number = this.§2!_§.y;
         this.§2!_§.x += _loc10_;
         this.§2!_§.y += _loc11_;
         var _loc14_:Number = param1.§;J§ * this.§[%§;
         if(this.§2!_§.§03§() > _loc14_ * _loc14_)
         {
            this.§2!_§.§!!L§(_loc14_ / this.§2!_§.§`"I§());
         }
         _loc10_ = this.§2!_§.x - _loc12_;
         _loc11_ = this.§2!_§.y - _loc13_;
         _loc2_.§"!_§.x += _loc2_.§-@§ * _loc10_;
         _loc2_.§"!_§.y += _loc2_.§-@§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§,H§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
