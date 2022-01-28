package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §>!H§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §,7§:b2Vec2;
      
      private var §`!0§:b2Vec2;
      
      private var §5!i§:b2Vec2;
      
      private var §?j§:b2Mat22;
      
      private var §-"$§:b2Vec2;
      
      private var §0!=§:Number;
      
      private var §,L§:Number;
      
      private var §""=§:Number;
      
      private var §>s§:Number;
      
      private var §36§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§>!H§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§,7§ = new b2Vec2();
         this.§`!0§ = new b2Vec2();
         this.§5!i§ = new b2Vec2();
         this.§?j§ = new b2Mat22();
         this.§-"$§ = new b2Vec2();
         super(param1);
         this.§`!0§.SetV(param1.target);
         _loc2_ = this.§`!0§.x - b2internal::"!l.m_xf.position.x;
         var _loc3_:Number = this.§`!0§.y - b2internal::"!l.m_xf.position.y;
         _loc4_ = b2internal::"!l.m_xf.R;
         this.§,7§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§,7§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§0!=§ = param1.§&>§;
         this.§5!i§.§?b§();
         this.§,L§ = param1.§@!8§;
         this.§""=§ = param1.§+!n§;
         this.§>s§ = 0;
         this.§36§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§`!0§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.§,7§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5!i§.x,param1 * this.§5!i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §>!,§() : b2Vec2
      {
         return this.§`!0§;
      }
      
      public function §"!$§(param1:b2Vec2) : void
      {
         if(b2internal::"!l.IsAwake() == false)
         {
            b2internal::"!l.SetAwake(true);
         }
         this.§`!0§ = param1;
      }
      
      public function §6T§() : Number
      {
         return this.§0!=§;
      }
      
      public function §?";§(param1:Number) : void
      {
         this.§0!=§ = param1;
      }
      
      public function §!!u§() : Number
      {
         return this.§,L§;
      }
      
      public function §?!6§(param1:Number) : void
      {
         this.§,L§ = param1;
      }
      
      public function §#4§() : Number
      {
         return this.§""=§;
      }
      
      public function §>+§(param1:Number) : void
      {
         this.§""=§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::"!l;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§,L§;
         var _loc5_:Number = 2 * _loc3_ * this.§""=§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§36§ = param1.§@[§ * (_loc5_ + param1.§@[§ * _loc6_);
         this.§36§ = this.§36§ != 0 ? Number(1 / this.§36§) : Number(0);
         this.§>s§ = param1.§@[§ * _loc6_ * this.§36§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§,7§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§,7§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§@"!§;
         _loc12_ = _loc2_.§=!N§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§>!H§.§<P§(this.K1);
         this.§>!H§.§9";§(this.K2);
         this.§>!H§.col1.x += this.§36§;
         this.§>!H§.col2.y += this.§36§;
         this.§>!H§.§'P§(this.§?j§);
         this.§-"$§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§`!0§.x;
         this.§-"$§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§`!0§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§5!i§.x *= param1.§class§;
         this.§5!i§.y *= param1.§class§;
         _loc2_.§]!g§.x += _loc11_ * this.§5!i§.x;
         _loc2_.§]!g§.y += _loc11_ * this.§5!i§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§5!i§.y - _loc9_ * this.§5!i§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::"!l;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§,7§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§,7§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§]!g§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§]!g§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§?j§;
         _loc4_ = _loc8_ + this.§>s§ * this.§-"$§.x + this.§36§ * this.§5!i§.x;
         _loc5_ = _loc9_ + this.§>s§ * this.§-"$§.y + this.§36§ * this.§5!i§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§5!i§.x;
         var _loc13_:Number = this.§5!i§.y;
         this.§5!i§.x += _loc10_;
         this.§5!i§.y += _loc11_;
         var _loc14_:Number = param1.§@[§ * this.§0!=§;
         if(this.§5!i§.§`2§() > _loc14_ * _loc14_)
         {
            this.§5!i§.§7H§(_loc14_ / this.§5!i§.§?!]§());
         }
         _loc10_ = this.§5!i§.x - _loc12_;
         _loc11_ = this.§5!i§.y - _loc13_;
         _loc2_.§]!g§.x += _loc2_.§@"!§ * _loc10_;
         _loc2_.§]!g§.y += _loc2_.§@"!§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§=!N§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
