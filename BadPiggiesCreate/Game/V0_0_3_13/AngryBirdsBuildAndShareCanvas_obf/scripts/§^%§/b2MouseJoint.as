package §^%§
{
   import §1!z§.b2Mat22;
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §7!q§.b2TimeStep;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §+"?§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §5"#§:b2Vec2;
      
      private var §+^§:b2Vec2;
      
      private var §^!@§:b2Vec2;
      
      private var §'!4§:b2Mat22;
      
      private var §5!§:b2Vec2;
      
      private var §5"+§:Number;
      
      private var §&!X§:Number;
      
      private var §,u§:Number;
      
      private var §5!E§:Number;
      
      private var §7!2§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§+"?§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§5"#§ = new b2Vec2();
         this.§+^§ = new b2Vec2();
         this.§^!@§ = new b2Vec2();
         this.§'!4§ = new b2Mat22();
         this.§5!§ = new b2Vec2();
         super(param1);
         this.§+^§.SetV(param1.target);
         _loc2_ = this.§+^§.x - b2internal::;!=.m_xf.position.x;
         var _loc3_:Number = this.§+^§.y - b2internal::;!=.m_xf.position.y;
         _loc4_ = b2internal::;!=.m_xf.R;
         this.§5"#§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§5"#§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§5"+§ = param1.§5[§;
         this.§^!@§.§4e§();
         this.§&!X§ = param1.§>&§;
         this.§,u§ = param1.§ o§;
         this.§5!E§ = 0;
         this.§7!2§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§+^§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;!=.GetWorldPoint(this.§5"#§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^!@§.x,param1 * this.§^!@§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §[!K§() : b2Vec2
      {
         return this.§+^§;
      }
      
      public function § !I§(param1:b2Vec2) : void
      {
         if(b2internal::;!=.IsAwake() == false)
         {
            b2internal::;!=.SetAwake(true);
         }
         this.§+^§ = param1;
      }
      
      public function §-i§() : Number
      {
         return this.§5"+§;
      }
      
      public function §]!D§(param1:Number) : void
      {
         this.§5"+§ = param1;
      }
      
      public function §[H§() : Number
      {
         return this.§&!X§;
      }
      
      public function §@8§(param1:Number) : void
      {
         this.§&!X§ = param1;
      }
      
      public function §<!k§() : Number
      {
         return this.§,u§;
      }
      
      public function §?!g§(param1:Number) : void
      {
         this.§,u§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::;!=;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§&!X§;
         var _loc5_:Number = 2 * _loc3_ * this.§,u§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§7!2§ = param1.§<e§ * (_loc5_ + param1.§<e§ * _loc6_);
         this.§7!2§ = this.§7!2§ != 0 ? Number(1 / this.§7!2§) : Number(0);
         this.§5!E§ = param1.§<e§ * _loc6_ * this.§7!2§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§5"#§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§5"#§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§"!O§;
         _loc12_ = _loc2_.§6""§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§+"?§.§>y§(this.K1);
         this.§+"?§.§;Q§(this.K2);
         this.§+"?§.col1.x += this.§7!2§;
         this.§+"?§.col2.y += this.§7!2§;
         this.§+"?§.§9@§(this.§'!4§);
         this.§5!§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§+^§.x;
         this.§5!§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§+^§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§^!@§.x *= param1.§`T§;
         this.§^!@§.y *= param1.§`T§;
         _loc2_.§4X§.x += _loc11_ * this.§^!@§.x;
         _loc2_.§4X§.y += _loc11_ * this.§^!@§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§^!@§.y - _loc9_ * this.§^!@§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::;!=;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§5"#§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§5"#§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§4X§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§4X§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§'!4§;
         _loc4_ = _loc8_ + this.§5!E§ * this.§5!§.x + this.§7!2§ * this.§^!@§.x;
         _loc5_ = _loc9_ + this.§5!E§ * this.§5!§.y + this.§7!2§ * this.§^!@§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§^!@§.x;
         var _loc13_:Number = this.§^!@§.y;
         this.§^!@§.x += _loc10_;
         this.§^!@§.y += _loc11_;
         var _loc14_:Number = param1.§<e§ * this.§5"+§;
         if(this.§^!@§.§@!1§() > _loc14_ * _loc14_)
         {
            this.§^!@§.§'q§(_loc14_ / this.§^!@§.§<_§());
         }
         _loc10_ = this.§^!@§.x - _loc12_;
         _loc11_ = this.§^!@§.y - _loc13_;
         _loc2_.§4X§.x += _loc2_.§"!O§ * _loc10_;
         _loc2_.§4X§.y += _loc2_.§"!O§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§6""§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
