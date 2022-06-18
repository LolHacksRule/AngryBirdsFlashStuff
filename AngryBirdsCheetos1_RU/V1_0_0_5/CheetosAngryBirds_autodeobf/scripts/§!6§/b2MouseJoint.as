package §!6§
{
   import § !5§.b2internal;
   import §+,§.b2Mat22;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   import §[W§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §+!]§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §"U§:b2Vec2;
      
      private var §2!$§:b2Vec2;
      
      private var §;!B§:b2Vec2;
      
      private var §]f§:b2Mat22;
      
      private var §=!6§:b2Vec2;
      
      private var §!!?§:Number;
      
      private var §]!M§:Number;
      
      private var §,!-§:Number;
      
      private var §function§:Number;
      
      private var §`!T§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§+!]§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§"U§ = new b2Vec2();
         this.§2!$§ = new b2Vec2();
         this.§;!B§ = new b2Vec2();
         this.§]f§ = new b2Mat22();
         this.§=!6§ = new b2Vec2();
         super(param1);
         this.§2!$§.SetV(param1.target);
         _loc2_ = this.§2!$§.x - b2internal::-!`.m_xf.position.x;
         var _loc3_:Number = this.§2!$§.y - b2internal::-!`.m_xf.position.y;
         _loc4_ = b2internal::-!`.m_xf.R;
         this.§"U§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§"U§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§!!?§ = param1.§`=§;
         this.§;!B§.§&N§();
         this.§]!M§ = param1.§6!+§;
         this.§,!-§ = param1.§&!U§;
         this.§function§ = 0;
         this.§`!T§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§2!$§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-!`.GetWorldPoint(this.§"U§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;!B§.x,param1 * this.§;!B§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §5!K§() : b2Vec2
      {
         return this.§2!$§;
      }
      
      public function §-V§(param1:b2Vec2) : void
      {
         if(b2internal::-!`.IsAwake() == false)
         {
            b2internal::-!`.SetAwake(true);
         }
         this.§2!$§ = param1;
      }
      
      public function §;!!§() : Number
      {
         return this.§!!?§;
      }
      
      public function §1!'§(param1:Number) : void
      {
         this.§!!?§ = param1;
      }
      
      public function §3!9§() : Number
      {
         return this.§]!M§;
      }
      
      public function §;S§(param1:Number) : void
      {
         this.§]!M§ = param1;
      }
      
      public function §;a§() : Number
      {
         return this.§,!-§;
      }
      
      public function §'N§(param1:Number) : void
      {
         this.§,!-§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::-!`;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§]!M§;
         var _loc5_:Number = 2 * _loc3_ * this.§,!-§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§`!T§ = param1.§=S§ * (_loc5_ + param1.§=S§ * _loc6_);
         this.§`!T§ = this.§`!T§ != 0 ? Number(1 / this.§`!T§) : Number(0);
         this.§function§ = param1.§=S§ * _loc6_ * this.§`!T§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§"U§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§"U§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§^!^§;
         _loc12_ = _loc2_.§^U§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§+!]§.§2!<§(this.K1);
         this.§+!]§.§]a§(this.K2);
         this.§+!]§.col1.x += this.§`!T§;
         this.§+!]§.col2.y += this.§`!T§;
         this.§+!]§.§"g§(this.§]f§);
         this.§=!6§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§2!$§.x;
         this.§=!6§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§2!$§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§;!B§.x *= param1.§0O§;
         this.§;!B§.y *= param1.§0O§;
         _loc2_.§%!N§.x += _loc11_ * this.§;!B§.x;
         _loc2_.§%!N§.y += _loc11_ * this.§;!B§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§;!B§.y - _loc9_ * this.§;!B§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::-!`;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§"U§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§"U§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§%!N§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§%!N§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§]f§;
         _loc4_ = _loc8_ + this.§function§ * this.§=!6§.x + this.§`!T§ * this.§;!B§.x;
         _loc5_ = _loc9_ + this.§function§ * this.§=!6§.y + this.§`!T§ * this.§;!B§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§;!B§.x;
         var _loc13_:Number = this.§;!B§.y;
         this.§;!B§.x += _loc10_;
         this.§;!B§.y += _loc11_;
         var _loc14_:Number = param1.§=S§ * this.§!!?§;
         if(this.§;!B§.§`!C§() > _loc14_ * _loc14_)
         {
            this.§;!B§.§!!T§(_loc14_ / this.§;!B§.§!!K§());
         }
         _loc10_ = this.§;!B§.x - _loc12_;
         _loc11_ = this.§;!B§.y - _loc13_;
         _loc2_.§%!N§.x += _loc2_.§^!^§ * _loc10_;
         _loc2_.§%!N§.y += _loc2_.§^!^§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§^U§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
