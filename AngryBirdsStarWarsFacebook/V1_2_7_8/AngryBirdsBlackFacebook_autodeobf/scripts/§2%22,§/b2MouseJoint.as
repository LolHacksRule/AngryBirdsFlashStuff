package §2",§
{
   import §1x§.b2Body;
   import §1x§.b2TimeStep;
   import §9!s§.b2internal;
   import §^>§.b2Mat22;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §=!L§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §9#+§:b2Vec2;
      
      private var §"9§:b2Vec2;
      
      private var §^!t§:b2Vec2;
      
      private var §'J§:b2Mat22;
      
      private var §,!B§:b2Vec2;
      
      private var §!"8§:Number;
      
      private var §!!j§:Number;
      
      private var §>B§:Number;
      
      private var §try§:Number;
      
      private var §32§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§=!L§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§9#+§ = new b2Vec2();
         this.§"9§ = new b2Vec2();
         this.§^!t§ = new b2Vec2();
         this.§'J§ = new b2Mat22();
         this.§,!B§ = new b2Vec2();
         super(param1);
         this.§"9§.SetV(param1.target);
         _loc2_ = this.§"9§.x - b2internal::@!u.m_xf.position.x;
         var _loc3_:Number = this.§"9§.y - b2internal::@!u.m_xf.position.y;
         _loc4_ = b2internal::@!u.m_xf.R;
         this.§9#+§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§9#+§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§!"8§ = param1.§0"l§;
         this.§^!t§.§@e§();
         this.§!!j§ = param1.§&"C§;
         this.§>B§ = param1.dampingRatio;
         this.§try§ = 0;
         this.§32§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§"9§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::@!u.GetWorldPoint(this.§9#+§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^!t§.x,param1 * this.§^!t§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §9"7§() : b2Vec2
      {
         return this.§"9§;
      }
      
      public function §1!O§(param1:b2Vec2) : void
      {
         if(b2internal::@!u.IsAwake() == false)
         {
            b2internal::@!u.SetAwake(true);
         }
         this.§"9§ = param1;
      }
      
      public function §'!#§() : Number
      {
         return this.§!"8§;
      }
      
      public function §6"9§(param1:Number) : void
      {
         this.§!"8§ = param1;
      }
      
      public function §8"8§() : Number
      {
         return this.§!!j§;
      }
      
      public function §^"'§(param1:Number) : void
      {
         this.§!!j§ = param1;
      }
      
      public function §8!U§() : Number
      {
         return this.§>B§;
      }
      
      public function §2+§(param1:Number) : void
      {
         this.§>B§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::@!u;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§!!j§;
         var _loc5_:Number = 2 * _loc3_ * this.§>B§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§32§ = param1.§&"%§ * (_loc5_ + param1.§&"%§ * _loc6_);
         this.§32§ = this.§32§ != 0 ? Number(1 / this.§32§) : Number(0);
         this.§try§ = param1.§&"%§ * _loc6_ * this.§32§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§9#+§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§9#+§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§@"P§;
         _loc12_ = _loc2_.§%#2§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§=!L§.§6!8§(this.K1);
         this.§=!L§.§%!O§(this.K2);
         this.§=!L§.col1.x += this.§32§;
         this.§=!L§.col2.y += this.§32§;
         this.§=!L§.§8t§(this.§'J§);
         this.§,!B§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§"9§.x;
         this.§,!B§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§"9§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§^!t§.x *= param1.§<J§;
         this.§^!t§.y *= param1.§<J§;
         _loc2_.§5!r§.x += _loc11_ * this.§^!t§.x;
         _loc2_.§5!r§.y += _loc11_ * this.§^!t§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§^!t§.y - _loc9_ * this.§^!t§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::@!u;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§9#+§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§9#+§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§5!r§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§5!r§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§'J§;
         _loc4_ = _loc8_ + this.§try§ * this.§,!B§.x + this.§32§ * this.§^!t§.x;
         _loc5_ = _loc9_ + this.§try§ * this.§,!B§.y + this.§32§ * this.§^!t§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§^!t§.x;
         var _loc13_:Number = this.§^!t§.y;
         this.§^!t§.x += _loc10_;
         this.§^!t§.y += _loc11_;
         var _loc14_:Number = param1.§&"%§ * this.§!"8§;
         if(this.§^!t§.§!N§() > _loc14_ * _loc14_)
         {
            this.§^!t§.§ !I§(_loc14_ / this.§^!t§.Length());
         }
         _loc10_ = this.§^!t§.x - _loc12_;
         _loc11_ = this.§^!t§.y - _loc13_;
         _loc2_.§5!r§.x += _loc2_.§@"P§ * _loc10_;
         _loc2_.§5!r§.y += _loc2_.§@"P§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§%#2§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
