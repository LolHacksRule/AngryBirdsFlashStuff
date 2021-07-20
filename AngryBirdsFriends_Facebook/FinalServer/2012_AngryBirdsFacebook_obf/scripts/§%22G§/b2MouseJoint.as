package §"G§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2TimeStep;
   import §7F§.b2Mat22;
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §3P§:b2Vec2;
      
      private var §-""§:b2Vec2;
      
      private var §^"8§:b2Vec2;
      
      private var §#!u§:b2Mat22;
      
      private var §#H§:b2Vec2;
      
      private var §#"-§:Number;
      
      private var §%!-§:Number;
      
      private var §2e§:Number;
      
      private var §2""§:Number;
      
      private var §9G§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§3P§ = new b2Vec2();
         this.§-""§ = new b2Vec2();
         this.§^"8§ = new b2Vec2();
         this.§#!u§ = new b2Mat22();
         this.§#H§ = new b2Vec2();
         super(param1);
         this.§-""§.SetV(param1.target);
         _loc2_ = this.§-""§.x - b2internal::<X.m_xf.position.x;
         var _loc3_:Number = this.§-""§.y - b2internal::<X.m_xf.position.y;
         _loc4_ = b2internal::<X.m_xf.R;
         this.§3P§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§3P§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§#"-§ = param1.§#9§;
         this.§^"8§.§%"0§();
         this.§%!-§ = param1.§[!p§;
         this.§2e§ = param1.§<!7§;
         this.§2""§ = 0;
         this.§9G§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§-""§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::<X.GetWorldPoint(this.§3P§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^"8§.x,param1 * this.§^"8§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §&"8§() : b2Vec2
      {
         return this.§-""§;
      }
      
      public function §5B§(param1:b2Vec2) : void
      {
         if(b2internal::<X.IsAwake() == false)
         {
            b2internal::<X.SetAwake(true);
         }
         this.§-""§ = param1;
      }
      
      public function §?4§() : Number
      {
         return this.§#"-§;
      }
      
      public function §#!N§(param1:Number) : void
      {
         this.§#"-§ = param1;
      }
      
      public function §'!Z§() : Number
      {
         return this.§%!-§;
      }
      
      public function §3#§(param1:Number) : void
      {
         this.§%!-§ = param1;
      }
      
      public function §0"I§() : Number
      {
         return this.§2e§;
      }
      
      public function §,!!§(param1:Number) : void
      {
         this.§2e§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::<X;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§%!-§;
         var _loc5_:Number = 2 * _loc3_ * this.§2e§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§9G§ = param1.§&!K§ * (_loc5_ + param1.§&!K§ * _loc6_);
         this.§9G§ = this.§9G§ != 0 ? Number(1 / this.§9G§) : Number(0);
         this.§2""§ = param1.§&!K§ * _loc6_ * this.§9G§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§3P§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§3P§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§6!j§;
         _loc12_ = _loc2_.§6!$§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§,i§(this.K1);
         this.K.§]l§(this.K2);
         this.K.col1.x += this.§9G§;
         this.K.col2.y += this.§9G§;
         this.K.§7!h§(this.§#!u§);
         this.§#H§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§-""§.x;
         this.§#H§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§-""§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§^"8§.x *= param1.§0#§;
         this.§^"8§.y *= param1.§0#§;
         _loc2_.§,!1§.x += _loc11_ * this.§^"8§.x;
         _loc2_.§,!1§.y += _loc11_ * this.§^"8§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§^"8§.y - _loc9_ * this.§^"8§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::<X;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§3P§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§3P§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§,!1§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§,!1§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§#!u§;
         _loc4_ = _loc8_ + this.§2""§ * this.§#H§.x + this.§9G§ * this.§^"8§.x;
         _loc5_ = _loc9_ + this.§2""§ * this.§#H§.y + this.§9G§ * this.§^"8§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§^"8§.x;
         var _loc13_:Number = this.§^"8§.y;
         this.§^"8§.x += _loc10_;
         this.§^"8§.y += _loc11_;
         var _loc14_:Number = param1.§&!K§ * this.§#"-§;
         if(this.§^"8§.§>C§() > _loc14_ * _loc14_)
         {
            this.§^"8§.§ !>§(_loc14_ / this.§^"8§.Length());
         }
         _loc10_ = this.§^"8§.x - _loc12_;
         _loc11_ = this.§^"8§.y - _loc13_;
         _loc2_.§,!1§.x += _loc2_.§6!j§ * _loc10_;
         _loc2_.§,!1§.y += _loc2_.§6!j§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§6!$§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
