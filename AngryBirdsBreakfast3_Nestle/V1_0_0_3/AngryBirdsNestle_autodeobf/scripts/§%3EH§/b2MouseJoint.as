package §>H§
{
   import § !%§.b2internal;
   import §,!k§.b2Mat22;
   import §,!k§.b2Vec2;
   import §;'§.b2Body;
   import §;'§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §var§:b2Vec2;
      
      private var §%!#§:b2Vec2;
      
      private var §@_§:b2Vec2;
      
      private var §]B§:b2Mat22;
      
      private var §]M§:b2Vec2;
      
      private var §&j§:Number;
      
      private var §2u§:Number;
      
      private var §;!W§:Number;
      
      private var §+!`§:Number;
      
      private var §0p§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§var§ = new b2Vec2();
         this.§%!#§ = new b2Vec2();
         this.§@_§ = new b2Vec2();
         this.§]B§ = new b2Mat22();
         this.§]M§ = new b2Vec2();
         super(param1);
         this.§%!#§.SetV(param1.target);
         _loc2_ = this.§%!#§.x - b2internal:: N.m_xf.position.x;
         var _loc3_:Number = this.§%!#§.y - b2internal:: N.m_xf.position.y;
         _loc4_ = b2internal:: N.m_xf.R;
         this.§var§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§var§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§&j§ = param1.§6T§;
         this.§@_§.§2!n§();
         this.§2u§ = param1.§;!3§;
         this.§;!W§ = param1.§]^§;
         this.§+!`§ = 0;
         this.§0p§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§%!#§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: N.GetWorldPoint(this.§var§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§@_§.x,param1 * this.§@_§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §^!U§() : b2Vec2
      {
         return this.§%!#§;
      }
      
      public function §^`§(param1:b2Vec2) : void
      {
         if(b2internal:: N.IsAwake() == false)
         {
            b2internal:: N.SetAwake(true);
         }
         this.§%!#§ = param1;
      }
      
      public function §@^§() : Number
      {
         return this.§&j§;
      }
      
      public function §-<§(param1:Number) : void
      {
         this.§&j§ = param1;
      }
      
      public function §`!n§() : Number
      {
         return this.§2u§;
      }
      
      public function §^W§(param1:Number) : void
      {
         this.§2u§ = param1;
      }
      
      public function §=^§() : Number
      {
         return this.§;!W§;
      }
      
      public function §9"+§(param1:Number) : void
      {
         this.§;!W§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal:: N;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§2u§;
         var _loc5_:Number = 2 * _loc3_ * this.§;!W§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§0p§ = param1.§<"3§ * (_loc5_ + param1.§<"3§ * _loc6_);
         this.§0p§ = this.§0p§ != 0 ? Number(1 / this.§0p§) : Number(0);
         this.§+!`§ = param1.§<"3§ * _loc6_ * this.§0p§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§var§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§var§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§1!#§;
         _loc12_ = _loc2_.§+%§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§,&§(this.K1);
         this.K.§-!Z§(this.K2);
         this.K.col1.x += this.§0p§;
         this.K.col2.y += this.§0p§;
         this.K.§@C§(this.§]B§);
         this.§]M§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§%!#§.x;
         this.§]M§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§%!#§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§@_§.x *= param1.§#v§;
         this.§@_§.y *= param1.§#v§;
         _loc2_.§1N§.x += _loc11_ * this.§@_§.x;
         _loc2_.§1N§.y += _loc11_ * this.§@_§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§@_§.y - _loc9_ * this.§@_§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal:: N;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§var§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§var§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§1N§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§1N§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§]B§;
         _loc4_ = _loc8_ + this.§+!`§ * this.§]M§.x + this.§0p§ * this.§@_§.x;
         _loc5_ = _loc9_ + this.§+!`§ * this.§]M§.y + this.§0p§ * this.§@_§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§@_§.x;
         var _loc13_:Number = this.§@_§.y;
         this.§@_§.x += _loc10_;
         this.§@_§.y += _loc11_;
         var _loc14_:Number = param1.§<"3§ * this.§&j§;
         if(this.§@_§.§"-§() > _loc14_ * _loc14_)
         {
            this.§@_§.§%"§(_loc14_ / this.§@_§.Length());
         }
         _loc10_ = this.§@_§.x - _loc12_;
         _loc11_ = this.§@_§.y - _loc13_;
         _loc2_.§1N§.x += _loc2_.§1!#§ * _loc10_;
         _loc2_.§1N§.y += _loc2_.§1!#§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§+%§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
