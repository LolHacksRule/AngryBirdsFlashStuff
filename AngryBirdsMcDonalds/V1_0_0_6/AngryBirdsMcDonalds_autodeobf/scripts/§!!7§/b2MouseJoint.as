package §!!7§
{
   import §7!5§.b2Body;
   import §7!5§.b2TimeStep;
   import §7!Y§.b2internal;
   import §@![§.b2Mat22;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §0!<§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §?!Y§:b2Vec2;
      
      private var §^!Z§:b2Vec2;
      
      private var §^!7§:b2Vec2;
      
      private var §0!+§:b2Mat22;
      
      private var §66§:b2Vec2;
      
      private var §+4§:Number;
      
      private var §6z§:Number;
      
      private var §>!l§:Number;
      
      private var §6!b§:Number;
      
      private var §5!i§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§0!<§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§?!Y§ = new b2Vec2();
         this.§^!Z§ = new b2Vec2();
         this.§^!7§ = new b2Vec2();
         this.§0!+§ = new b2Mat22();
         this.§66§ = new b2Vec2();
         super(param1);
         this.§^!Z§.SetV(param1.target);
         _loc2_ = this.§^!Z§.x - b2internal::30.m_xf.position.x;
         var _loc3_:Number = this.§^!Z§.y - b2internal::30.m_xf.position.y;
         _loc4_ = b2internal::30.m_xf.R;
         this.§?!Y§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§?!Y§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§+4§ = param1.§1!J§;
         this.§^!7§.§%!&§();
         this.§6z§ = param1.§6U§;
         this.§>!l§ = param1.§%R§;
         this.§6!b§ = 0;
         this.§5!i§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§^!Z§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::30.GetWorldPoint(this.§?!Y§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^!7§.x,param1 * this.§^!7§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §=5§() : b2Vec2
      {
         return this.§^!Z§;
      }
      
      public function §=!O§(param1:b2Vec2) : void
      {
         if(b2internal::30.IsAwake() == false)
         {
            b2internal::30.SetAwake(true);
         }
         this.§^!Z§ = param1;
      }
      
      public function §#!_§() : Number
      {
         return this.§+4§;
      }
      
      public function §7^§(param1:Number) : void
      {
         this.§+4§ = param1;
      }
      
      public function §%!0§() : Number
      {
         return this.§6z§;
      }
      
      public function §'7§(param1:Number) : void
      {
         this.§6z§ = param1;
      }
      
      public function §,&§() : Number
      {
         return this.§>!l§;
      }
      
      public function §5!3§(param1:Number) : void
      {
         this.§>!l§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::30;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§6z§;
         var _loc5_:Number = 2 * _loc3_ * this.§>!l§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§5!i§ = param1.§4l§ * (_loc5_ + param1.§4l§ * _loc6_);
         this.§5!i§ = this.§5!i§ != 0 ? Number(1 / this.§5!i§) : Number(0);
         this.§6!b§ = param1.§4l§ * _loc6_ * this.§5!i§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§?!Y§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§?!Y§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§0T§;
         _loc12_ = _loc2_.§#d§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§0!<§.§!!Q§(this.K1);
         this.§0!<§.§2!1§(this.K2);
         this.§0!<§.col1.x += this.§5!i§;
         this.§0!<§.col2.y += this.§5!i§;
         this.§0!<§.§^!§(this.§0!+§);
         this.§66§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§^!Z§.x;
         this.§66§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§^!Z§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§^!7§.x *= param1.§'!P§;
         this.§^!7§.y *= param1.§'!P§;
         _loc2_.§?!%§.x += _loc11_ * this.§^!7§.x;
         _loc2_.§?!%§.y += _loc11_ * this.§^!7§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§^!7§.y - _loc9_ * this.§^!7§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::30;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§?!Y§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§?!Y§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§?!%§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§?!%§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§0!+§;
         _loc4_ = _loc8_ + this.§6!b§ * this.§66§.x + this.§5!i§ * this.§^!7§.x;
         _loc5_ = _loc9_ + this.§6!b§ * this.§66§.y + this.§5!i§ * this.§^!7§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§^!7§.x;
         var _loc13_:Number = this.§^!7§.y;
         this.§^!7§.x += _loc10_;
         this.§^!7§.y += _loc11_;
         var _loc14_:Number = param1.§4l§ * this.§+4§;
         if(this.§^!7§.§[n§() > _loc14_ * _loc14_)
         {
            this.§^!7§.§<'§(_loc14_ / this.§^!7§.§[O§());
         }
         _loc10_ = this.§^!7§.x - _loc12_;
         _loc11_ = this.§^!7§.y - _loc13_;
         _loc2_.§?!%§.x += _loc2_.§0T§ * _loc10_;
         _loc2_.§?!%§.y += _loc2_.§0T§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§#d§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
