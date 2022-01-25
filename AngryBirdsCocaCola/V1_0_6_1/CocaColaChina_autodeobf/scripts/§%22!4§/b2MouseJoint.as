package §"!4§
{
   import § y§.b2Body;
   import § y§.b2TimeStep;
   import §54§.b2internal;
   import §;h§.b2Mat22;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §2!!§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §1B§:b2Vec2;
      
      private var §?!a§:b2Vec2;
      
      private var §46§:b2Vec2;
      
      private var §?F§:b2Mat22;
      
      private var §]!4§:b2Vec2;
      
      private var §6!Y§:Number;
      
      private var §+7§:Number;
      
      private var §@b§:Number;
      
      private var §#!$§:Number;
      
      private var §+!H§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§2!!§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§1B§ = new b2Vec2();
         this.§?!a§ = new b2Vec2();
         this.§46§ = new b2Vec2();
         this.§?F§ = new b2Mat22();
         this.§]!4§ = new b2Vec2();
         super(param1);
         this.§?!a§.SetV(param1.target);
         _loc2_ = this.§?!a§.x - b2internal::[!4.m_xf.position.x;
         var _loc3_:Number = this.§?!a§.y - b2internal::[!4.m_xf.position.y;
         _loc4_ = b2internal::[!4.m_xf.R;
         this.§1B§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§1B§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§6!Y§ = param1.§4!d§;
         this.§46§.§9!V§();
         this.§+7§ = param1.§^!,§;
         this.§@b§ = param1.§1z§;
         this.§#!$§ = 0;
         this.§+!H§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§?!a§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!4.GetWorldPoint(this.§1B§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§46§.x,param1 * this.§46§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §4!O§() : b2Vec2
      {
         return this.§?!a§;
      }
      
      public function §%![§(param1:b2Vec2) : void
      {
         if(b2internal::[!4.IsAwake() == false)
         {
            b2internal::[!4.SetAwake(true);
         }
         this.§?!a§ = param1;
      }
      
      public function §%n§() : Number
      {
         return this.§6!Y§;
      }
      
      public function §"!<§(param1:Number) : void
      {
         this.§6!Y§ = param1;
      }
      
      public function § !N§() : Number
      {
         return this.§+7§;
      }
      
      public function §0!A§(param1:Number) : void
      {
         this.§+7§ = param1;
      }
      
      public function §6s§() : Number
      {
         return this.§@b§;
      }
      
      public function §&+§(param1:Number) : void
      {
         this.§@b§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::[!4;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§+7§;
         var _loc5_:Number = 2 * _loc3_ * this.§@b§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§+!H§ = param1.§9!^§ * (_loc5_ + param1.§9!^§ * _loc6_);
         this.§+!H§ = this.§+!H§ != 0 ? Number(1 / this.§+!H§) : Number(0);
         this.§#!$§ = param1.§9!^§ * _loc6_ * this.§+!H§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§1B§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§1B§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§!S§;
         _loc12_ = _loc2_.§2`§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§2!!§.§40§(this.K1);
         this.§2!!§.§]9§(this.K2);
         this.§2!!§.col1.x += this.§+!H§;
         this.§2!!§.col2.y += this.§+!H§;
         this.§2!!§.§false§(this.§?F§);
         this.§]!4§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§?!a§.x;
         this.§]!4§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§?!a§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§46§.x *= param1.§56§;
         this.§46§.y *= param1.§56§;
         _loc2_.§+!W§.x += _loc11_ * this.§46§.x;
         _loc2_.§+!W§.y += _loc11_ * this.§46§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§46§.y - _loc9_ * this.§46§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::[!4;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§1B§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§1B§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§+!W§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§+!W§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§?F§;
         _loc4_ = _loc8_ + this.§#!$§ * this.§]!4§.x + this.§+!H§ * this.§46§.x;
         _loc5_ = _loc9_ + this.§#!$§ * this.§]!4§.y + this.§+!H§ * this.§46§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§46§.x;
         var _loc13_:Number = this.§46§.y;
         this.§46§.x += _loc10_;
         this.§46§.y += _loc11_;
         var _loc14_:Number = param1.§9!^§ * this.§6!Y§;
         if(this.§46§.§&T§() > _loc14_ * _loc14_)
         {
            this.§46§.§#M§(_loc14_ / this.§46§.§&c§());
         }
         _loc10_ = this.§46§.x - _loc12_;
         _loc11_ = this.§46§.y - _loc13_;
         _loc2_.§+!W§.x += _loc2_.§!S§ * _loc10_;
         _loc2_.§+!W§.y += _loc2_.§!S§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§2`§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
