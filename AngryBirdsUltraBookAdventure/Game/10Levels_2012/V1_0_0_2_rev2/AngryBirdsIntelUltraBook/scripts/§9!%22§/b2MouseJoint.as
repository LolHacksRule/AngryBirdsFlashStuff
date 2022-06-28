package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §]_§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §7F§:b2Vec2;
      
      private var §0!!§:b2Vec2;
      
      private var §,!2§:b2Vec2;
      
      private var §,0§:b2Mat22;
      
      private var §<!f§:b2Vec2;
      
      private var §;!?§:Number;
      
      private var §7! §:Number;
      
      private var §`!H§:Number;
      
      private var §@Q§:Number;
      
      private var §=R§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§]_§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§7F§ = new b2Vec2();
         this.§0!!§ = new b2Vec2();
         this.§,!2§ = new b2Vec2();
         this.§,0§ = new b2Mat22();
         this.§<!f§ = new b2Vec2();
         super(param1);
         this.§0!!§.SetV(param1.target);
         _loc2_ = this.§0!!§.x - b2internal::0!w.m_xf.position.x;
         var _loc3_:Number = this.§0!!§.y - b2internal::0!w.m_xf.position.y;
         _loc4_ = b2internal::0!w.m_xf.R;
         this.§7F§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§7F§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§;!?§ = param1.§`z§;
         this.§,!2§.§`!5§();
         this.§7! § = param1.§ y§;
         this.§`!H§ = param1.§`!X§;
         this.§@Q§ = 0;
         this.§=R§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§0!!§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.§7F§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§,!2§.x,param1 * this.§,!2§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,@§() : b2Vec2
      {
         return this.§0!!§;
      }
      
      public function §'G§(param1:b2Vec2) : void
      {
         if(b2internal::0!w.IsAwake() == false)
         {
            b2internal::0!w.SetAwake(true);
         }
         this.§0!!§ = param1;
      }
      
      public function §3!§() : Number
      {
         return this.§;!?§;
      }
      
      public function §+l§(param1:Number) : void
      {
         this.§;!?§ = param1;
      }
      
      public function §8!?§() : Number
      {
         return this.§7! §;
      }
      
      public function §3!s§(param1:Number) : void
      {
         this.§7! § = param1;
      }
      
      public function §-!8§() : Number
      {
         return this.§`!H§;
      }
      
      public function §1!T§(param1:Number) : void
      {
         this.§`!H§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::0!w;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§7! §;
         var _loc5_:Number = 2 * _loc3_ * this.§`!H§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§=R§ = param1.§^Z§ * (_loc5_ + param1.§^Z§ * _loc6_);
         this.§=R§ = this.§=R§ != 0 ? Number(1 / this.§=R§) : Number(0);
         this.§@Q§ = param1.§^Z§ * _loc6_ * this.§=R§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§7F§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§7F§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§7n§;
         _loc12_ = _loc2_.§;5§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§]_§.§1c§(this.K1);
         this.§]_§.§ !Y§(this.K2);
         this.§]_§.col1.x += this.§=R§;
         this.§]_§.col2.y += this.§=R§;
         this.§]_§.§,p§(this.§,0§);
         this.§<!f§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§0!!§.x;
         this.§<!f§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§0!!§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§,!2§.x *= param1.§87§;
         this.§,!2§.y *= param1.§87§;
         _loc2_.§^O§.x += _loc11_ * this.§,!2§.x;
         _loc2_.§^O§.y += _loc11_ * this.§,!2§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§,!2§.y - _loc9_ * this.§,!2§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::0!w;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§7F§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§7F§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§^O§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§^O§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§,0§;
         _loc4_ = _loc8_ + this.§@Q§ * this.§<!f§.x + this.§=R§ * this.§,!2§.x;
         _loc5_ = _loc9_ + this.§@Q§ * this.§<!f§.y + this.§=R§ * this.§,!2§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§,!2§.x;
         var _loc13_:Number = this.§,!2§.y;
         this.§,!2§.x += _loc10_;
         this.§,!2§.y += _loc11_;
         var _loc14_:Number = param1.§^Z§ * this.§;!?§;
         if(this.§,!2§.§ !W§() > _loc14_ * _loc14_)
         {
            this.§,!2§.§^$§(_loc14_ / this.§,!2§.§>!7§());
         }
         _loc10_ = this.§,!2§.x - _loc12_;
         _loc11_ = this.§,!2§.y - _loc13_;
         _loc2_.§^O§.x += _loc2_.§7n§ * _loc10_;
         _loc2_.§^O§.y += _loc2_.§7n§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§;5§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
