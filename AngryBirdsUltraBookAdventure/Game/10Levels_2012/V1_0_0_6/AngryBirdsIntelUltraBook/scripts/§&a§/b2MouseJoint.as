package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §&+§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §@!C§:b2Vec2;
      
      private var §'!§:b2Vec2;
      
      private var §<<§:b2Vec2;
      
      private var § ,§:b2Mat22;
      
      private var §2!U§:b2Vec2;
      
      private var §-!K§:Number;
      
      private var §^Z§:Number;
      
      private var §`!"§:Number;
      
      private var §#!§:Number;
      
      private var §'!h§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§&+§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§@!C§ = new b2Vec2();
         this.§'!§ = new b2Vec2();
         this.§<<§ = new b2Vec2();
         this.§ ,§ = new b2Mat22();
         this.§2!U§ = new b2Vec2();
         super(param1);
         this.§'!§.SetV(param1.target);
         _loc2_ = this.§'!§.x - b2internal::[=.m_xf.position.x;
         var _loc3_:Number = this.§'!§.y - b2internal::[=.m_xf.position.y;
         _loc4_ = b2internal::[=.m_xf.R;
         this.§@!C§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§@!C§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§-!K§ = param1.§2A§;
         this.§<<§.§&!K§();
         this.§^Z§ = param1.§4p§;
         this.§`!"§ = param1.§2=§;
         this.§#!§ = 0;
         this.§'!h§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§'!§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.§@!C§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§<<§.x,param1 * this.§<<§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §5§() : b2Vec2
      {
         return this.§'!§;
      }
      
      public function §+!z§(param1:b2Vec2) : void
      {
         if(b2internal::[=.IsAwake() == false)
         {
            b2internal::[=.SetAwake(true);
         }
         this.§'!§ = param1;
      }
      
      public function §9D§() : Number
      {
         return this.§-!K§;
      }
      
      public function §>T§(param1:Number) : void
      {
         this.§-!K§ = param1;
      }
      
      public function §8!V§() : Number
      {
         return this.§^Z§;
      }
      
      public function §,!e§(param1:Number) : void
      {
         this.§^Z§ = param1;
      }
      
      public function §,2§() : Number
      {
         return this.§`!"§;
      }
      
      public function §-!4§(param1:Number) : void
      {
         this.§`!"§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::[=;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§^Z§;
         var _loc5_:Number = 2 * _loc3_ * this.§`!"§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§'!h§ = param1.§&!'§ * (_loc5_ + param1.§&!'§ * _loc6_);
         this.§'!h§ = this.§'!h§ != 0 ? Number(1 / this.§'!h§) : Number(0);
         this.§#!§ = param1.§&!'§ * _loc6_ * this.§'!h§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§@!C§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§@!C§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§-7§;
         _loc12_ = _loc2_.§,!o§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§&+§.§^p§(this.K1);
         this.§&+§.§%!3§(this.K2);
         this.§&+§.col1.x += this.§'!h§;
         this.§&+§.col2.y += this.§'!h§;
         this.§&+§.§9!0§(this.§ ,§);
         this.§2!U§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§'!§.x;
         this.§2!U§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§'!§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§<<§.x *= param1.§ !o§;
         this.§<<§.y *= param1.§ !o§;
         _loc2_.§%!V§.x += _loc11_ * this.§<<§.x;
         _loc2_.§%!V§.y += _loc11_ * this.§<<§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§<<§.y - _loc9_ * this.§<<§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::[=;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§@!C§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§@!C§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§%!V§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§%!V§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§ ,§;
         _loc4_ = _loc8_ + this.§#!§ * this.§2!U§.x + this.§'!h§ * this.§<<§.x;
         _loc5_ = _loc9_ + this.§#!§ * this.§2!U§.y + this.§'!h§ * this.§<<§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§<<§.x;
         var _loc13_:Number = this.§<<§.y;
         this.§<<§.x += _loc10_;
         this.§<<§.y += _loc11_;
         var _loc14_:Number = param1.§&!'§ * this.§-!K§;
         if(this.§<<§.§#-§() > _loc14_ * _loc14_)
         {
            this.§<<§.§%G§(_loc14_ / this.§<<§.§-D§());
         }
         _loc10_ = this.§<<§.x - _loc12_;
         _loc11_ = this.§<<§.y - _loc13_;
         _loc2_.§%!V§.x += _loc2_.§-7§ * _loc10_;
         _loc2_.§%!V§.y += _loc2_.§-7§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§,!o§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
