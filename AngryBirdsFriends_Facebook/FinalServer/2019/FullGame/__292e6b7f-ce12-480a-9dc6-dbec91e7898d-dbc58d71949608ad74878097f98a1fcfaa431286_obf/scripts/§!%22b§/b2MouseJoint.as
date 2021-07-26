package §!"b§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2TimeStep;
   import §04§.b2Mat22;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §?$2§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §8"S§:b2Vec2;
      
      private var §+"_§:b2Vec2;
      
      private var §9b§:b2Vec2;
      
      private var §'g§:b2Mat22;
      
      private var §4"f§:b2Vec2;
      
      private var §&"f§:Number;
      
      private var §=$=§:Number;
      
      private var §"$&§:Number;
      
      private var §8#G§:Number;
      
      private var §=#X§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§?$2§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§8"S§ = new b2Vec2();
         this.§+"_§ = new b2Vec2();
         this.§9b§ = new b2Vec2();
         this.§'g§ = new b2Mat22();
         this.§4"f§ = new b2Vec2();
         super(param1);
         this.§+"_§.SetV(param1.target);
         _loc2_ = this.§+"_§.x - b2internal::]#j.m_xf.position.x;
         var _loc3_:Number = this.§+"_§.y - b2internal::]#j.m_xf.position.y;
         _loc4_ = b2internal::]#j.m_xf.R;
         this.§8"S§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§8"S§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§&"f§ = param1.§^"P§;
         this.§9b§.§3-§();
         this.§=$=§ = param1.§'#%§;
         this.§"$&§ = param1.dampingRatio;
         this.§8#G§ = 0;
         this.§=#X§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§+"_§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]#j.GetWorldPoint(this.§8"S§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9b§.x,param1 * this.§9b§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!#P§() : b2Vec2
      {
         return this.§+"_§;
      }
      
      public function §>"b§(param1:b2Vec2) : void
      {
         if(b2internal::]#j.IsAwake() == false)
         {
            b2internal::]#j.SetAwake(true);
         }
         this.§+"_§ = param1;
      }
      
      public function §"U§() : Number
      {
         return this.§&"f§;
      }
      
      public function §<!3§(param1:Number) : void
      {
         this.§&"f§ = param1;
      }
      
      public function §9#m§() : Number
      {
         return this.§=$=§;
      }
      
      public function §;$%§(param1:Number) : void
      {
         this.§=$=§ = param1;
      }
      
      public function §2"N§() : Number
      {
         return this.§"$&§;
      }
      
      public function §8o§(param1:Number) : void
      {
         this.§"$&§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::]#j;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§=$=§;
         var _loc5_:Number = 2 * _loc3_ * this.§"$&§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§=#X§ = param1.dt * (_loc5_ + param1.dt * _loc6_);
         this.§=#X§ = this.§=#X§ != 0 ? Number(1 / this.§=#X§) : Number(0);
         this.§8#G§ = param1.dt * _loc6_ * this.§=#X§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§8"S§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§8"S§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§<A§;
         _loc12_ = _loc2_.§2k§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§?$2§.§="`§(this.K1);
         this.§?$2§.§&!Q§(this.K2);
         this.§?$2§.col1.x += this.§=#X§;
         this.§?$2§.col2.y += this.§=#X§;
         this.§?$2§.§3!V§(this.§'g§);
         this.§4"f§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§+"_§.x;
         this.§4"f§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§+"_§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§9b§.x *= param1.§%!U§;
         this.§9b§.y *= param1.§%!U§;
         _loc2_.§^%§.x += _loc11_ * this.§9b§.x;
         _loc2_.§^%§.y += _loc11_ * this.§9b§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§9b§.y - _loc9_ * this.§9b§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::]#j;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§8"S§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§8"S§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§^%§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§^%§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§'g§;
         _loc4_ = _loc8_ + this.§8#G§ * this.§4"f§.x + this.§=#X§ * this.§9b§.x;
         _loc5_ = _loc9_ + this.§8#G§ * this.§4"f§.y + this.§=#X§ * this.§9b§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§9b§.x;
         var _loc13_:Number = this.§9b§.y;
         this.§9b§.x += _loc10_;
         this.§9b§.y += _loc11_;
         var _loc14_:Number = param1.dt * this.§&"f§;
         if(this.§9b§.§-#!§() > _loc14_ * _loc14_)
         {
            this.§9b§.§#"I§(_loc14_ / this.§9b§.Length());
         }
         _loc10_ = this.§9b§.x - _loc12_;
         _loc11_ = this.§9b§.y - _loc13_;
         _loc2_.§^%§.x += _loc2_.§<A§ * _loc10_;
         _loc2_.§^%§.y += _loc2_.§<A§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§2k§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
