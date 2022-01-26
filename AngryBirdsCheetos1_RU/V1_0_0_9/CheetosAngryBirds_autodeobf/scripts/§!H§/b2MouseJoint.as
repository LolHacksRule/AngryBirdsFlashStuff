package §!H§
{
   import §!!B§.b2Body;
   import §!!B§.b2TimeStep;
   import §;0§.b2internal;
   import §;U§.b2Mat22;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §+"§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §=K§:b2Vec2;
      
      private var §3n§:b2Vec2;
      
      private var §9$§:b2Vec2;
      
      private var §^"§:b2Mat22;
      
      private var §8Z§:b2Vec2;
      
      private var §6P§:Number;
      
      private var §throw§:Number;
      
      private var §`F§:Number;
      
      private var §>c§:Number;
      
      private var §[v§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§+"§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§=K§ = new b2Vec2();
         this.§3n§ = new b2Vec2();
         this.§9$§ = new b2Vec2();
         this.§^"§ = new b2Mat22();
         this.§8Z§ = new b2Vec2();
         super(param1);
         this.§3n§.SetV(param1.target);
         _loc2_ = this.§3n§.x - b2internal::%!.m_xf.position.x;
         var _loc3_:Number = this.§3n§.y - b2internal::%!.m_xf.position.y;
         _loc4_ = b2internal::%!.m_xf.R;
         this.§=K§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§=K§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§6P§ = param1.§%!J§;
         this.§9$§.§4S§();
         this.§throw§ = param1.§!;§;
         this.§`F§ = param1.§=h§;
         this.§>c§ = 0;
         this.§[v§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§3n§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!.GetWorldPoint(this.§=K§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9$§.x,param1 * this.§9$§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §`P§() : b2Vec2
      {
         return this.§3n§;
      }
      
      public function §2!E§(param1:b2Vec2) : void
      {
         if(b2internal::%!.IsAwake() == false)
         {
            b2internal::%!.SetAwake(true);
         }
         this.§3n§ = param1;
      }
      
      public function § !E§() : Number
      {
         return this.§6P§;
      }
      
      public function §9B§(param1:Number) : void
      {
         this.§6P§ = param1;
      }
      
      public function §[J§() : Number
      {
         return this.§throw§;
      }
      
      public function §0Q§(param1:Number) : void
      {
         this.§throw§ = param1;
      }
      
      public function §4G§() : Number
      {
         return this.§`F§;
      }
      
      public function §2b§(param1:Number) : void
      {
         this.§`F§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::%!;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§throw§;
         var _loc5_:Number = 2 * _loc3_ * this.§`F§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§[v§ = param1.§1-§ * (_loc5_ + param1.§1-§ * _loc6_);
         this.§[v§ = this.§[v§ != 0 ? Number(1 / this.§[v§) : Number(0);
         this.§>c§ = param1.§1-§ * _loc6_ * this.§[v§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§=K§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§=K§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§?t§;
         _loc12_ = _loc2_.§<!V§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§+"§.§4!;§(this.K1);
         this.§+"§.§5A§(this.K2);
         this.§+"§.col1.x += this.§[v§;
         this.§+"§.col2.y += this.§[v§;
         this.§+"§.§-N§(this.§^"§);
         this.§8Z§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§3n§.x;
         this.§8Z§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§3n§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§9$§.x *= param1.§+k§;
         this.§9$§.y *= param1.§+k§;
         _loc2_.§7W§.x += _loc11_ * this.§9$§.x;
         _loc2_.§7W§.y += _loc11_ * this.§9$§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§9$§.y - _loc9_ * this.§9$§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::%!;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§=K§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§=K§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§7W§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§7W§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§^"§;
         _loc4_ = _loc8_ + this.§>c§ * this.§8Z§.x + this.§[v§ * this.§9$§.x;
         _loc5_ = _loc9_ + this.§>c§ * this.§8Z§.y + this.§[v§ * this.§9$§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§9$§.x;
         var _loc13_:Number = this.§9$§.y;
         this.§9$§.x += _loc10_;
         this.§9$§.y += _loc11_;
         var _loc14_:Number = param1.§1-§ * this.§6P§;
         if(this.§9$§.§0!]§() > _loc14_ * _loc14_)
         {
            this.§9$§.§2!'§(_loc14_ / this.§9$§.§1H§());
         }
         _loc10_ = this.§9$§.x - _loc12_;
         _loc11_ = this.§9$§.y - _loc13_;
         _loc2_.§7W§.x += _loc2_.§?t§ * _loc10_;
         _loc2_.§7W§.y += _loc2_.§?t§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§<!V§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
