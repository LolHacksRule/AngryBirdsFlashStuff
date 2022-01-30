package §^!2§
{
   import §!S§.b2internal;
   import §?!h§.b2Mat22;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   import §`]§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §-h§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §=D§:b2Vec2;
      
      private var §<"2§:b2Vec2;
      
      private var §3!%§:b2Vec2;
      
      private var §<!7§:b2Mat22;
      
      private var §6E§:b2Vec2;
      
      private var §6q§:Number;
      
      private var §]!A§:Number;
      
      private var § W§:Number;
      
      private var §]!7§:Number;
      
      private var §9M§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§-h§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§=D§ = new b2Vec2();
         this.§<"2§ = new b2Vec2();
         this.§3!%§ = new b2Vec2();
         this.§<!7§ = new b2Mat22();
         this.§6E§ = new b2Vec2();
         super(param1);
         this.§<"2§.SetV(param1.target);
         _loc2_ = this.§<"2§.x - b2internal::?!&.m_xf.position.x;
         var _loc3_:Number = this.§<"2§.y - b2internal::?!&.m_xf.position.y;
         _loc4_ = b2internal::?!&.m_xf.R;
         this.§=D§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§=D§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§6q§ = param1.§4"5§;
         this.§3!%§.§+Z§();
         this.§]!A§ = param1.§`!j§;
         this.§ W§ = param1.§#T§;
         this.§]!7§ = 0;
         this.§9M§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§<"2§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!&.GetWorldPoint(this.§=D§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§3!%§.x,param1 * this.§3!%§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §;j§() : b2Vec2
      {
         return this.§<"2§;
      }
      
      public function §8d§(param1:b2Vec2) : void
      {
         if(b2internal::?!&.IsAwake() == false)
         {
            b2internal::?!&.SetAwake(true);
         }
         this.§<"2§ = param1;
      }
      
      public function §3!B§() : Number
      {
         return this.§6q§;
      }
      
      public function §-j§(param1:Number) : void
      {
         this.§6q§ = param1;
      }
      
      public function §;"8§() : Number
      {
         return this.§]!A§;
      }
      
      public function §+"6§(param1:Number) : void
      {
         this.§]!A§ = param1;
      }
      
      public function §;a§() : Number
      {
         return this.§ W§;
      }
      
      public function §3!N§(param1:Number) : void
      {
         this.§ W§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::?!&;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§]!A§;
         var _loc5_:Number = 2 * _loc3_ * this.§ W§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§9M§ = param1.§7"2§ * (_loc5_ + param1.§7"2§ * _loc6_);
         this.§9M§ = this.§9M§ != 0 ? Number(1 / this.§9M§) : Number(0);
         this.§]!7§ = param1.§7"2§ * _loc6_ * this.§9M§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§=D§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§=D§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§+w§;
         _loc12_ = _loc2_.§-A§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§-h§.§0!N§(this.K1);
         this.§-h§.§>""§(this.K2);
         this.§-h§.col1.x += this.§9M§;
         this.§-h§.col2.y += this.§9M§;
         this.§-h§.§[!3§(this.§<!7§);
         this.§6E§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§<"2§.x;
         this.§6E§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§<"2§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§3!%§.x *= param1.§]"5§;
         this.§3!%§.y *= param1.§]"5§;
         _loc2_.§#!S§.x += _loc11_ * this.§3!%§.x;
         _loc2_.§#!S§.y += _loc11_ * this.§3!%§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§3!%§.y - _loc9_ * this.§3!%§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::?!&;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§=D§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§=D§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§#!S§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§#!S§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§<!7§;
         _loc4_ = _loc8_ + this.§]!7§ * this.§6E§.x + this.§9M§ * this.§3!%§.x;
         _loc5_ = _loc9_ + this.§]!7§ * this.§6E§.y + this.§9M§ * this.§3!%§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§3!%§.x;
         var _loc13_:Number = this.§3!%§.y;
         this.§3!%§.x += _loc10_;
         this.§3!%§.y += _loc11_;
         var _loc14_:Number = param1.§7"2§ * this.§6q§;
         if(this.§3!%§.§2I§() > _loc14_ * _loc14_)
         {
            this.§3!%§.§<!4§(_loc14_ / this.§3!%§.§7!6§());
         }
         _loc10_ = this.§3!%§.x - _loc12_;
         _loc11_ = this.§3!%§.y - _loc13_;
         _loc2_.§#!S§.x += _loc2_.§+w§ * _loc10_;
         _loc2_.§#!S§.y += _loc2_.§+w§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§-A§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
