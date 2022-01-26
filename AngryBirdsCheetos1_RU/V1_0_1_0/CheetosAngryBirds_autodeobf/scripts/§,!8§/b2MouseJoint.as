package §,!8§
{
   import §&!B§.b2Mat22;
   import §&!B§.b2Vec2;
   import §[x§.b2Body;
   import §[x§.b2TimeStep;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §5!`§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §6!]§:b2Vec2;
      
      private var §^![§:b2Vec2;
      
      private var §]4§:b2Vec2;
      
      private var §;^§:b2Mat22;
      
      private var §'!3§:b2Vec2;
      
      private var §9R§:Number;
      
      private var §`[§:Number;
      
      private var §&J§:Number;
      
      private var §9>§:Number;
      
      private var §!X§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§5!`§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§6!]§ = new b2Vec2();
         this.§^![§ = new b2Vec2();
         this.§]4§ = new b2Vec2();
         this.§;^§ = new b2Mat22();
         this.§'!3§ = new b2Vec2();
         super(param1);
         this.§^![§.SetV(param1.target);
         _loc2_ = this.§^![§.x - b2internal::?!S.m_xf.position.x;
         var _loc3_:Number = this.§^![§.y - b2internal::?!S.m_xf.position.y;
         _loc4_ = b2internal::?!S.m_xf.R;
         this.§6!]§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§6!]§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§9R§ = param1.§;R§;
         this.§]4§.§,!3§();
         this.§`[§ = param1.§5![§;
         this.§&J§ = param1.§-?§;
         this.§9>§ = 0;
         this.§!X§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§^![§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!S.GetWorldPoint(this.§6!]§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]4§.x,param1 * this.§]4§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §#I§() : b2Vec2
      {
         return this.§^![§;
      }
      
      public function §4t§(param1:b2Vec2) : void
      {
         if(b2internal::?!S.IsAwake() == false)
         {
            b2internal::?!S.SetAwake(true);
         }
         this.§^![§ = param1;
      }
      
      public function §-t§() : Number
      {
         return this.§9R§;
      }
      
      public function §^,§(param1:Number) : void
      {
         this.§9R§ = param1;
      }
      
      public function §@t§() : Number
      {
         return this.§`[§;
      }
      
      public function §@0§(param1:Number) : void
      {
         this.§`[§ = param1;
      }
      
      public function §]e§() : Number
      {
         return this.§&J§;
      }
      
      public function §finally§(param1:Number) : void
      {
         this.§&J§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::?!S;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§`[§;
         var _loc5_:Number = 2 * _loc3_ * this.§&J§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§!X§ = param1.§>!!§ * (_loc5_ + param1.§>!!§ * _loc6_);
         this.§!X§ = this.§!X§ != 0 ? Number(1 / this.§!X§) : Number(0);
         this.§9>§ = param1.§>!!§ * _loc6_ * this.§!X§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§6!]§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§6!]§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§6I§;
         _loc12_ = _loc2_.§2!L§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§5!`§.§?`§(this.K1);
         this.§5!`§.§7Y§(this.K2);
         this.§5!`§.col1.x += this.§!X§;
         this.§5!`§.col2.y += this.§!X§;
         this.§5!`§.§<5§(this.§;^§);
         this.§'!3§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§^![§.x;
         this.§'!3§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§^![§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§]4§.x *= param1.§4!G§;
         this.§]4§.y *= param1.§4!G§;
         _loc2_.§%q§.x += _loc11_ * this.§]4§.x;
         _loc2_.§%q§.y += _loc11_ * this.§]4§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§]4§.y - _loc9_ * this.§]4§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::?!S;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§6!]§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§6!]§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§%q§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§%q§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§;^§;
         _loc4_ = _loc8_ + this.§9>§ * this.§'!3§.x + this.§!X§ * this.§]4§.x;
         _loc5_ = _loc9_ + this.§9>§ * this.§'!3§.y + this.§!X§ * this.§]4§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§]4§.x;
         var _loc13_:Number = this.§]4§.y;
         this.§]4§.x += _loc10_;
         this.§]4§.y += _loc11_;
         var _loc14_:Number = param1.§>!!§ * this.§9R§;
         if(this.§]4§.§0!K§() > _loc14_ * _loc14_)
         {
            this.§]4§.§7!G§(_loc14_ / this.§]4§.§-V§());
         }
         _loc10_ = this.§]4§.x - _loc12_;
         _loc11_ = this.§]4§.y - _loc13_;
         _loc2_.§%q§.x += _loc2_.§6I§ * _loc10_;
         _loc2_.§%q§.y += _loc2_.§6I§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§2!L§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
