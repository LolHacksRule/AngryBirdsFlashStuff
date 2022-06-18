package §3!U§
{
   import §%!9§.b2Mat22;
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §1!+§.b2TimeStep;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var § !_§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §%"j§:b2Vec2;
      
      private var §;!N§:b2Vec2;
      
      private var §<#e§:b2Vec2;
      
      private var §^#§:b2Mat22;
      
      private var §;!]§:b2Vec2;
      
      private var §=!8§:Number;
      
      private var §'!@§:Number;
      
      private var §7#6§:Number;
      
      private var §>#L§:Number;
      
      private var §&$3§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§ !_§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§%"j§ = new b2Vec2();
         this.§;!N§ = new b2Vec2();
         this.§<#e§ = new b2Vec2();
         this.§^#§ = new b2Mat22();
         this.§;!]§ = new b2Vec2();
         super(param1);
         this.§;!N§.SetV(param1.target);
         _loc2_ = this.§;!N§.x - b2internal::?s.m_xf.position.x;
         var _loc3_:Number = this.§;!N§.y - b2internal::?s.m_xf.position.y;
         _loc4_ = b2internal::?s.m_xf.R;
         this.§%"j§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§%"j§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§=!8§ = param1.§;#L§;
         this.§<#e§.§2!9§();
         this.§'!@§ = param1.§0Y§;
         this.§7#6§ = param1.dampingRatio;
         this.§>#L§ = 0;
         this.§&$3§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§;!N§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?s.GetWorldPoint(this.§%"j§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§<#e§.x,param1 * this.§<#e§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §=T§() : b2Vec2
      {
         return this.§;!N§;
      }
      
      public function §2h§(param1:b2Vec2) : void
      {
         if(b2internal::?s.IsAwake() == false)
         {
            b2internal::?s.SetAwake(true);
         }
         this.§;!N§ = param1;
      }
      
      public function §&Y§() : Number
      {
         return this.§=!8§;
      }
      
      public function §%1§(param1:Number) : void
      {
         this.§=!8§ = param1;
      }
      
      public function §4$+§() : Number
      {
         return this.§'!@§;
      }
      
      public function §]s§(param1:Number) : void
      {
         this.§'!@§ = param1;
      }
      
      public function §]!a§() : Number
      {
         return this.§7#6§;
      }
      
      public function §'#3§(param1:Number) : void
      {
         this.§7#6§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::?s;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§'!@§;
         var _loc5_:Number = 2 * _loc3_ * this.§7#6§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§&$3§ = param1.dt * (_loc5_ + param1.dt * _loc6_);
         this.§&$3§ = this.§&$3§ != 0 ? Number(1 / this.§&$3§) : Number(0);
         this.§>#L§ = param1.dt * _loc6_ * this.§&$3§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§%"j§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§%"j§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§"#z§;
         _loc12_ = _loc2_.§["p§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§ !_§.§2"Q§(this.K1);
         this.§ !_§.§4"4§(this.K2);
         this.§ !_§.col1.x += this.§&$3§;
         this.§ !_§.col2.y += this.§&$3§;
         this.§ !_§.§<g§(this.§^#§);
         this.§;!]§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§;!N§.x;
         this.§;!]§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§;!N§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§<#e§.x *= param1.§##y§;
         this.§<#e§.y *= param1.§##y§;
         _loc2_.§ ![§.x += _loc11_ * this.§<#e§.x;
         _loc2_.§ ![§.y += _loc11_ * this.§<#e§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§<#e§.y - _loc9_ * this.§<#e§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::?s;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§%"j§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§%"j§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§ ![§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§ ![§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§^#§;
         _loc4_ = _loc8_ + this.§>#L§ * this.§;!]§.x + this.§&$3§ * this.§<#e§.x;
         _loc5_ = _loc9_ + this.§>#L§ * this.§;!]§.y + this.§&$3§ * this.§<#e§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§<#e§.x;
         var _loc13_:Number = this.§<#e§.y;
         this.§<#e§.x += _loc10_;
         this.§<#e§.y += _loc11_;
         var _loc14_:Number = param1.dt * this.§=!8§;
         if(this.§<#e§.§&$<§() > _loc14_ * _loc14_)
         {
            this.§<#e§.§@o§(_loc14_ / this.§<#e§.Length());
         }
         _loc10_ = this.§<#e§.x - _loc12_;
         _loc11_ = this.§<#e§.y - _loc13_;
         _loc2_.§ ![§.x += _loc2_.§"#z§ * _loc10_;
         _loc2_.§ ![§.y += _loc2_.§"#z§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§["p§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
