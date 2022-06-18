package §0"=§
{
   import §8#t§.b2Body;
   import §8#t§.b2TimeStep;
   import §[!3§.b2internal;
   import §`# §.b2Mat22;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §3$'§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §]#8§:b2Vec2;
      
      private var §6#D§:b2Vec2;
      
      private var §]"5§:b2Vec2;
      
      private var §7#B§:b2Mat22;
      
      private var §>"E§:b2Vec2;
      
      private var §[$D§:Number;
      
      private var §1$ §:Number;
      
      private var §+"X§:Number;
      
      private var §6#[§:Number;
      
      private var §+R§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§3$'§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§]#8§ = new b2Vec2();
         this.§6#D§ = new b2Vec2();
         this.§]"5§ = new b2Vec2();
         this.§7#B§ = new b2Mat22();
         this.§>"E§ = new b2Vec2();
         super(param1);
         this.§6#D§.SetV(param1.target);
         _loc2_ = this.§6#D§.x - b2internal::;$6.m_xf.position.x;
         var _loc3_:Number = this.§6#D§.y - b2internal::;$6.m_xf.position.y;
         _loc4_ = b2internal::;$6.m_xf.R;
         this.§]#8§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§]#8§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§[$D§ = param1.§5$8§;
         this.§]"5§.§5J§();
         this.§1$ § = param1.§;$4§;
         this.§+"X§ = param1.dampingRatio;
         this.§6#[§ = 0;
         this.§+R§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§6#D§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;$6.GetWorldPoint(this.§]#8§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]"5§.x,param1 * this.§]"5§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §7r§() : b2Vec2
      {
         return this.§6#D§;
      }
      
      public function §-"&§(param1:b2Vec2) : void
      {
         if(b2internal::;$6.IsAwake() == false)
         {
            b2internal::;$6.SetAwake(true);
         }
         this.§6#D§ = param1;
      }
      
      public function §>",§() : Number
      {
         return this.§[$D§;
      }
      
      public function §8"f§(param1:Number) : void
      {
         this.§[$D§ = param1;
      }
      
      public function §-!_§() : Number
      {
         return this.§1$ §;
      }
      
      public function §7"1§(param1:Number) : void
      {
         this.§1$ § = param1;
      }
      
      public function §+"v§() : Number
      {
         return this.§+"X§;
      }
      
      public function §9!f§(param1:Number) : void
      {
         this.§+"X§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::;$6;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§1$ §;
         var _loc5_:Number = 2 * _loc3_ * this.§+"X§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§+R§ = param1.dt * (_loc5_ + param1.dt * _loc6_);
         this.§+R§ = this.§+R§ != 0 ? Number(1 / this.§+R§) : Number(0);
         this.§6#[§ = param1.dt * _loc6_ * this.§+R§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§]#8§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§]#8§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§&!s§;
         _loc12_ = _loc2_.§!$5§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§3$'§.§`!?§(this.K1);
         this.§3$'§.§6"a§(this.K2);
         this.§3$'§.col1.x += this.§+R§;
         this.§3$'§.col2.y += this.§+R§;
         this.§3$'§.§%!l§(this.§7#B§);
         this.§>"E§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§6#D§.x;
         this.§>"E§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§6#D§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§]"5§.x *= param1.§9]§;
         this.§]"5§.y *= param1.§9]§;
         _loc2_.§8!z§.x += _loc11_ * this.§]"5§.x;
         _loc2_.§8!z§.y += _loc11_ * this.§]"5§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§]"5§.y - _loc9_ * this.§]"5§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::;$6;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§]#8§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§]#8§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§8!z§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§8!z§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§7#B§;
         _loc4_ = _loc8_ + this.§6#[§ * this.§>"E§.x + this.§+R§ * this.§]"5§.x;
         _loc5_ = _loc9_ + this.§6#[§ * this.§>"E§.y + this.§+R§ * this.§]"5§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§]"5§.x;
         var _loc13_:Number = this.§]"5§.y;
         this.§]"5§.x += _loc10_;
         this.§]"5§.y += _loc11_;
         var _loc14_:Number = param1.dt * this.§[$D§;
         if(this.§]"5§.§&!X§() > _loc14_ * _loc14_)
         {
            this.§]"5§.§<#3§(_loc14_ / this.§]"5§.Length());
         }
         _loc10_ = this.§]"5§.x - _loc12_;
         _loc11_ = this.§]"5§.y - _loc13_;
         _loc2_.§8!z§.x += _loc2_.§&!s§ * _loc10_;
         _loc2_.§8!z§.y += _loc2_.§&!s§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§!$5§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
