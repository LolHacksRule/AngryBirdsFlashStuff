package §4"$§
{
   import §&!M§.b2Body;
   import §&!M§.b2TimeStep;
   import §3!t§.b2Mat22;
   import §3!t§.b2Vec2;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §?8§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §;"$§:b2Vec2;
      
      private var §'&§:b2Vec2;
      
      private var §>&§:b2Vec2;
      
      private var §=!i§:b2Mat22;
      
      private var §8p§:b2Vec2;
      
      private var §9"8§:Number;
      
      private var §6" §:Number;
      
      private var §9!2§:Number;
      
      private var §;![§:Number;
      
      private var §?"6§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§?8§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§;"$§ = new b2Vec2();
         this.§'&§ = new b2Vec2();
         this.§>&§ = new b2Vec2();
         this.§=!i§ = new b2Mat22();
         this.§8p§ = new b2Vec2();
         super(param1);
         this.§'&§.SetV(param1.target);
         _loc2_ = this.§'&§.x - b2internal::!!3.m_xf.position.x;
         var _loc3_:Number = this.§'&§.y - b2internal::!!3.m_xf.position.y;
         _loc4_ = b2internal::!!3.m_xf.R;
         this.§;"$§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§;"$§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§9"8§ = param1.§ -§;
         this.§>&§.§ 4§();
         this.§6" § = param1.§&s§;
         this.§9!2§ = param1.§9!]§;
         this.§;![§ = 0;
         this.§?"6§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§'&§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!3.GetWorldPoint(this.§;"$§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>&§.x,param1 * this.§>&§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!Y§() : b2Vec2
      {
         return this.§'&§;
      }
      
      public function §4Q§(param1:b2Vec2) : void
      {
         if(b2internal::!!3.IsAwake() == false)
         {
            b2internal::!!3.SetAwake(true);
         }
         this.§'&§ = param1;
      }
      
      public function § %§() : Number
      {
         return this.§9"8§;
      }
      
      public function §7k§(param1:Number) : void
      {
         this.§9"8§ = param1;
      }
      
      public function §<-§() : Number
      {
         return this.§6" §;
      }
      
      public function §<_§(param1:Number) : void
      {
         this.§6" § = param1;
      }
      
      public function §`g§() : Number
      {
         return this.§9!2§;
      }
      
      public function § !V§(param1:Number) : void
      {
         this.§9!2§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::!!3;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§6" §;
         var _loc5_:Number = 2 * _loc3_ * this.§9!2§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§?"6§ = param1.§!"7§ * (_loc5_ + param1.§!"7§ * _loc6_);
         this.§?"6§ = this.§?"6§ != 0 ? Number(1 / this.§?"6§) : Number(0);
         this.§;![§ = param1.§!"7§ * _loc6_ * this.§?"6§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§;"$§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§;"$§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§+!O§;
         _loc12_ = _loc2_.§#f§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§?8§.§0"%§(this.K1);
         this.§?8§.§,"5§(this.K2);
         this.§?8§.col1.x += this.§?"6§;
         this.§?8§.col2.y += this.§?"6§;
         this.§?8§.§-!D§(this.§=!i§);
         this.§8p§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§'&§.x;
         this.§8p§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§'&§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§>&§.x *= param1.§<!4§;
         this.§>&§.y *= param1.§<!4§;
         _loc2_.§[!m§.x += _loc11_ * this.§>&§.x;
         _loc2_.§[!m§.y += _loc11_ * this.§>&§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§>&§.y - _loc9_ * this.§>&§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::!!3;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§;"$§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§;"$§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§[!m§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§[!m§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§=!i§;
         _loc4_ = _loc8_ + this.§;![§ * this.§8p§.x + this.§?"6§ * this.§>&§.x;
         _loc5_ = _loc9_ + this.§;![§ * this.§8p§.y + this.§?"6§ * this.§>&§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§>&§.x;
         var _loc13_:Number = this.§>&§.y;
         this.§>&§.x += _loc10_;
         this.§>&§.y += _loc11_;
         var _loc14_:Number = param1.§!"7§ * this.§9"8§;
         if(this.§>&§.§["6§() > _loc14_ * _loc14_)
         {
            this.§>&§.§%!?§(_loc14_ / this.§>&§.§=U§());
         }
         _loc10_ = this.§>&§.x - _loc12_;
         _loc11_ = this.§>&§.y - _loc13_;
         _loc2_.§[!m§.x += _loc2_.§+!O§ * _loc10_;
         _loc2_.§[!m§.y += _loc2_.§+!O§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§#f§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
