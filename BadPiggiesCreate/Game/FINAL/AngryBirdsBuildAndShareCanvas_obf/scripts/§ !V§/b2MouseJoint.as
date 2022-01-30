package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §@V§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §'!3§:b2Vec2;
      
      private var §1U§:b2Vec2;
      
      private var §?;§:b2Vec2;
      
      private var §@e§:b2Mat22;
      
      private var §+"1§:b2Vec2;
      
      private var §@!c§:Number;
      
      private var §,!9§:Number;
      
      private var §?!H§:Number;
      
      private var §3!T§:Number;
      
      private var §<l§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§@V§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§'!3§ = new b2Vec2();
         this.§1U§ = new b2Vec2();
         this.§?;§ = new b2Vec2();
         this.§@e§ = new b2Mat22();
         this.§+"1§ = new b2Vec2();
         super(param1);
         this.§1U§.SetV(param1.target);
         _loc2_ = this.§1U§.x - b2internal:: `.m_xf.position.x;
         var _loc3_:Number = this.§1U§.y - b2internal:: `.m_xf.position.y;
         _loc4_ = b2internal:: `.m_xf.R;
         this.§'!3§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§'!3§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§@!c§ = param1.§0!`§;
         this.§?;§.§@!s§();
         this.§,!9§ = param1.§2!5§;
         this.§?!H§ = param1.§9!J§;
         this.§3!T§ = 0;
         this.§<l§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§1U§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.§'!3§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§?;§.x,param1 * this.§?;§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §1"7§() : b2Vec2
      {
         return this.§1U§;
      }
      
      public function §`v§(param1:b2Vec2) : void
      {
         if(b2internal:: `.IsAwake() == false)
         {
            b2internal:: `.SetAwake(true);
         }
         this.§1U§ = param1;
      }
      
      public function §;"7§() : Number
      {
         return this.§@!c§;
      }
      
      public function §+a§(param1:Number) : void
      {
         this.§@!c§ = param1;
      }
      
      public function §=Y§() : Number
      {
         return this.§,!9§;
      }
      
      public function §1"#§(param1:Number) : void
      {
         this.§,!9§ = param1;
      }
      
      public function §-t§() : Number
      {
         return this.§?!H§;
      }
      
      public function §;;§(param1:Number) : void
      {
         this.§?!H§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal:: `;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§,!9§;
         var _loc5_:Number = 2 * _loc3_ * this.§?!H§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§<l§ = param1.§+z§ * (_loc5_ + param1.§+z§ * _loc6_);
         this.§<l§ = this.§<l§ != 0 ? Number(1 / this.§<l§) : Number(0);
         this.§3!T§ = param1.§+z§ * _loc6_ * this.§<l§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§'!3§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§'!3§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§;k§;
         _loc12_ = _loc2_.§6x§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§@V§.§5"4§(this.K1);
         this.§@V§.§4"<§(this.K2);
         this.§@V§.col1.x += this.§<l§;
         this.§@V§.col2.y += this.§<l§;
         this.§@V§.§7!Z§(this.§@e§);
         this.§+"1§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§1U§.x;
         this.§+"1§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§1U§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§?;§.x *= param1.§<3§;
         this.§?;§.y *= param1.§<3§;
         _loc2_.§,b§.x += _loc11_ * this.§?;§.x;
         _loc2_.§,b§.y += _loc11_ * this.§?;§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§?;§.y - _loc9_ * this.§?;§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal:: `;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§'!3§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§'!3§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§,b§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§,b§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§@e§;
         _loc4_ = _loc8_ + this.§3!T§ * this.§+"1§.x + this.§<l§ * this.§?;§.x;
         _loc5_ = _loc9_ + this.§3!T§ * this.§+"1§.y + this.§<l§ * this.§?;§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§?;§.x;
         var _loc13_:Number = this.§?;§.y;
         this.§?;§.x += _loc10_;
         this.§?;§.y += _loc11_;
         var _loc14_:Number = param1.§+z§ * this.§@!c§;
         if(this.§?;§.§%"§() > _loc14_ * _loc14_)
         {
            this.§?;§.§>!t§(_loc14_ / this.§?;§.§`g§());
         }
         _loc10_ = this.§?;§.x - _loc12_;
         _loc11_ = this.§?;§.y - _loc13_;
         _loc2_.§,b§.x += _loc2_.§;k§ * _loc10_;
         _loc2_.§,b§.y += _loc2_.§;k§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§6x§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
