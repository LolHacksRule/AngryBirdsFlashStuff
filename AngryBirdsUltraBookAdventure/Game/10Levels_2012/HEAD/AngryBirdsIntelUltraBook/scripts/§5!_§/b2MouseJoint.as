package §5!_§
{
   import §1%§.b2Body;
   import §1%§.b2TimeStep;
   import §8!H§.b2internal;
   import §?!&§.b2Mat22;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §^7§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §;=§:b2Vec2;
      
      private var § H§:b2Vec2;
      
      private var §>!C§:b2Vec2;
      
      private var §;!3§:b2Mat22;
      
      private var §;!#§:b2Vec2;
      
      private var §;y§:Number;
      
      private var §[!a§:Number;
      
      private var §`!&§:Number;
      
      private var §[-§:Number;
      
      private var § 0§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§^7§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§;=§ = new b2Vec2();
         this.§ H§ = new b2Vec2();
         this.§>!C§ = new b2Vec2();
         this.§;!3§ = new b2Mat22();
         this.§;!#§ = new b2Vec2();
         super(param1);
         this.§ H§.SetV(param1.target);
         _loc2_ = this.§ H§.x - § X§.m_xf.position.x;
         var _loc3_:Number = this.§ H§.y - § X§.m_xf.position.y;
         _loc4_ = § X§.m_xf.R;
         this.§;=§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§;=§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§;y§ = param1.§5b§;
         this.§>!C§.§@l§();
         this.§[!a§ = param1.§!N§;
         this.§`!&§ = param1.§^c§;
         this.§[-§ = 0;
         this.§ 0§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§ H§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return § X§.GetWorldPoint(this.§;=§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>!C§.x,param1 * this.§>!C§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §-!=§() : b2Vec2
      {
         return this.§ H§;
      }
      
      public function §6E§(param1:b2Vec2) : void
      {
         if(§ X§.IsAwake() == false)
         {
            § X§.SetAwake(true);
         }
         this.§ H§ = param1;
      }
      
      public function §">§() : Number
      {
         return this.§;y§;
      }
      
      public function §7i§(param1:Number) : void
      {
         this.§;y§ = param1;
      }
      
      public function §5d§() : Number
      {
         return this.§[!a§;
      }
      
      public function §4!"§(param1:Number) : void
      {
         this.§[!a§ = param1;
      }
      
      public function §1h§() : Number
      {
         return this.§`!&§;
      }
      
      public function §[`§(param1:Number) : void
      {
         this.§`!&§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = § X§;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§[!a§;
         var _loc5_:Number = 2 * _loc3_ * this.§`!&§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§ 0§ = param1.§?!>§ * (_loc5_ + param1.§?!>§ * _loc6_);
         this.§ 0§ = this.§ 0§ != 0 ? Number(1 / this.§ 0§) : Number(0);
         this.§[-§ = param1.§?!>§ * _loc6_ * this.§ 0§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§;=§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§;=§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§4s§;
         _loc12_ = _loc2_.§[!F§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§^7§.§72§(this.K1);
         this.§^7§.§;!X§(this.K2);
         this.§^7§.col1.x += this.§ 0§;
         this.§^7§.col2.y += this.§ 0§;
         this.§^7§.§6!<§(this.§;!3§);
         this.§;!#§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§ H§.x;
         this.§;!#§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§ H§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§>!C§.x *= param1.§&l§;
         this.§>!C§.y *= param1.§&l§;
         _loc2_.§69§.x += _loc11_ * this.§>!C§.x;
         _loc2_.§69§.y += _loc11_ * this.§>!C§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§>!C§.y - _loc9_ * this.§>!C§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = § X§;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§;=§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§;=§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§69§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§69§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§;!3§;
         _loc4_ = _loc8_ + this.§[-§ * this.§;!#§.x + this.§ 0§ * this.§>!C§.x;
         _loc5_ = _loc9_ + this.§[-§ * this.§;!#§.y + this.§ 0§ * this.§>!C§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§>!C§.x;
         var _loc13_:Number = this.§>!C§.y;
         this.§>!C§.x += _loc10_;
         this.§>!C§.y += _loc11_;
         var _loc14_:Number = param1.§?!>§ * this.§;y§;
         if(this.§>!C§.§ 8§() > _loc14_ * _loc14_)
         {
            this.§>!C§.§49§(_loc14_ / this.§>!C§.§2o§());
         }
         _loc10_ = this.§>!C§.x - _loc12_;
         _loc11_ = this.§>!C§.y - _loc13_;
         _loc2_.§69§.x += _loc2_.§4s§ * _loc10_;
         _loc2_.§69§.y += _loc2_.§4s§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§[!F§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
