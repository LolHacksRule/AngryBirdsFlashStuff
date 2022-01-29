package § ! §
{
   import § "%§.b2Mat22;
   import § "%§.b2Vec2;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §4#W§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §^#N§:b2Vec2;
      
      private var § !b§:b2Vec2;
      
      private var §1#a§:b2Vec2;
      
      private var §?"-§:b2Mat22;
      
      private var §4A§:b2Vec2;
      
      private var § #X§:Number;
      
      private var §%#$§:Number;
      
      private var §4$2§:Number;
      
      private var §;9§:Number;
      
      private var §?"m§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§4#W§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§^#N§ = new b2Vec2();
         this.§ !b§ = new b2Vec2();
         this.§1#a§ = new b2Vec2();
         this.§?"-§ = new b2Mat22();
         this.§4A§ = new b2Vec2();
         super(param1);
         this.§ !b§.SetV(param1.target);
         _loc2_ = this.§ !b§.x - b2internal::^U.m_xf.position.x;
         var _loc3_:Number = this.§ !b§.y - b2internal::^U.m_xf.position.y;
         _loc4_ = b2internal::^U.m_xf.R;
         this.§^#N§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§^#N§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§ #X§ = param1.§'!@§;
         this.§1#a§.§#!t§();
         this.§%#$§ = param1.§!Q§;
         this.§4$2§ = param1.dampingRatio;
         this.§;9§ = 0;
         this.§?"m§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§ !b§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::^U.GetWorldPoint(this.§^#N§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§1#a§.x,param1 * this.§1#a§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §>l§() : b2Vec2
      {
         return this.§ !b§;
      }
      
      public function §=#V§(param1:b2Vec2) : void
      {
         if(b2internal::^U.IsAwake() == false)
         {
            b2internal::^U.SetAwake(true);
         }
         this.§ !b§ = param1;
      }
      
      public function §?!H§() : Number
      {
         return this.§ #X§;
      }
      
      public function §%$+§(param1:Number) : void
      {
         this.§ #X§ = param1;
      }
      
      public function §^!@§() : Number
      {
         return this.§%#$§;
      }
      
      public function §!#T§(param1:Number) : void
      {
         this.§%#$§ = param1;
      }
      
      public function §7#h§() : Number
      {
         return this.§4$2§;
      }
      
      public function §3h§(param1:Number) : void
      {
         this.§4$2§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::^U;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§%#$§;
         var _loc5_:Number = 2 * _loc3_ * this.§4$2§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§?"m§ = param1.dt * (_loc5_ + param1.dt * _loc6_);
         this.§?"m§ = this.§?"m§ != 0 ? Number(1 / this.§?"m§) : Number(0);
         this.§;9§ = param1.dt * _loc6_ * this.§?"m§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§^#N§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§^#N§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§@P§;
         _loc12_ = _loc2_.§ !q§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§4#W§.§ "u§(this.K1);
         this.§4#W§.§[e§(this.K2);
         this.§4#W§.col1.x += this.§?"m§;
         this.§4#W§.col2.y += this.§?"m§;
         this.§4#W§.§+"B§(this.§?"-§);
         this.§4A§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§ !b§.x;
         this.§4A§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§ !b§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§1#a§.x *= param1.§4$B§;
         this.§1#a§.y *= param1.§4$B§;
         _loc2_.§4!I§.x += _loc11_ * this.§1#a§.x;
         _loc2_.§4!I§.y += _loc11_ * this.§1#a§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§1#a§.y - _loc9_ * this.§1#a§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::^U;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§^#N§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§^#N§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§4!I§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§4!I§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§?"-§;
         _loc4_ = _loc8_ + this.§;9§ * this.§4A§.x + this.§?"m§ * this.§1#a§.x;
         _loc5_ = _loc9_ + this.§;9§ * this.§4A§.y + this.§?"m§ * this.§1#a§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§1#a§.x;
         var _loc13_:Number = this.§1#a§.y;
         this.§1#a§.x += _loc10_;
         this.§1#a§.y += _loc11_;
         var _loc14_:Number = param1.dt * this.§ #X§;
         if(this.§1#a§.§"#<§() > _loc14_ * _loc14_)
         {
            this.§1#a§.§8!O§(_loc14_ / this.§1#a§.Length());
         }
         _loc10_ = this.§1#a§.x - _loc12_;
         _loc11_ = this.§1#a§.y - _loc13_;
         _loc2_.§4!I§.x += _loc2_.§@P§ * _loc10_;
         _loc2_.§4!I§.y += _loc2_.§@P§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§ !q§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
