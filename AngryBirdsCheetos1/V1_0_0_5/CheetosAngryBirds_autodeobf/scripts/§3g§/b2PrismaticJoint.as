package §3g§
{
   import §;]§.b2Settings;
   import §;]§.b2internal;
   import §=E§.b2Mat22;
   import §=E§.b2Mat33;
   import §=E§.b2Math;
   import §=E§.b2Transform;
   import §=E§.b2Vec2;
   import §=E§.b2Vec3;
   import §?!0§.b2Body;
   import §?!0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9!M§:b2Vec2;
      
      private var §8o§:b2Vec2;
      
      private var §3_§:Number;
      
      private var §&9§:b2Vec2;
      
      private var §5!§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §@X§:b2Mat33;
      
      private var §8v§:b2Vec3;
      
      private var §9<§:Number;
      
      private var §>G§:Number;
      
      private var §%! §:Number;
      
      private var §-4§:Number;
      
      private var §]d§:Number;
      
      private var §+>§:Number;
      
      private var §%+§:Boolean;
      
      private var §&!E§:Boolean;
      
      private var §^!H§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9!M§ = new b2Vec2();
         this.§8o§ = new b2Vec2();
         this.§&9§ = new b2Vec2();
         this.§5!§ = new b2Vec2();
         this.§@X§ = new b2Mat33();
         this.§8v§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§4B§);
         this.m_localAnchor2.SetV(param1.§ !Q§);
         this.§9!M§.SetV(param1.§=!P§);
         this.§8o§.x = -this.§9!M§.y;
         this.§8o§.y = this.§9!M§.x;
         this.§3_§ = param1.§72§;
         this.§8v§.§^!#§();
         this.§9<§ = 0;
         this.§>G§ = 0;
         this.§%! § = param1.§^!<§;
         this.§-4§ = param1.§1g§;
         this.§]d§ = param1.§6f§;
         this.§+>§ = param1.motorSpeed;
         this.§%+§ = param1.§9[§;
         this.§&!E§ = param1.§<S§;
         this.§^!H§ = b2internal::1&;
         this.§&9§.§^!#§();
         this.§5!§.§^!#§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§8v§.x * this.§5!§.x + (this.§>G§ + this.§8v§.z) * this.§&9§.x),param1 * (this.§8v§.x * this.§5!§.y + (this.§>G§ + this.§8v§.z) * this.§&9§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8v§.y;
      }
      
      public function §4[§() : Number
      {
         var _loc1_:b2Body = b2internal::2!D;
         var _loc2_:b2Body = b2internal::;B;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§true §(this.§9!M§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §%p§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!D;
         var _loc2_:b2Body = b2internal::;B;
         _loc3_ = _loc1_.m_xf.R;
         var _loc4_:Number = this.m_localAnchor1.x - _loc1_.m_sweep.localCenter.x;
         var _loc5_:Number = this.m_localAnchor1.y - _loc1_.m_sweep.localCenter.y;
         var _loc6_:Number = _loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_;
         _loc5_ = _loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_;
         _loc4_ = _loc6_;
         _loc3_ = _loc2_.m_xf.R;
         var _loc7_:Number = this.m_localAnchor2.x - _loc2_.m_sweep.localCenter.x;
         var _loc8_:Number = this.m_localAnchor2.y - _loc2_.m_sweep.localCenter.y;
         _loc6_ = _loc3_.col1.x * _loc7_ + _loc3_.col2.x * _loc8_;
         _loc8_ = _loc3_.col1.y * _loc7_ + _loc3_.col2.y * _loc8_;
         _loc7_ = _loc6_;
         var _loc9_:Number = _loc1_.m_sweep.c.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.c.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.c.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.c.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.§true §(this.§9!M§);
         var _loc16_:b2Vec2 = _loc1_.§0+§;
         var _loc17_:b2Vec2 = _loc2_.§0+§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §#§() : Boolean
      {
         return this.§%+§;
      }
      
      public function §40§(param1:Boolean) : void
      {
         b2internal::2!D.SetAwake(true);
         b2internal::;B.SetAwake(true);
         this.§%+§ = param1;
      }
      
      public function §7d§() : Number
      {
         return this.§%! §;
      }
      
      public function §6_§() : Number
      {
         return this.§-4§;
      }
      
      public function §5B§(param1:Number, param2:Number) : void
      {
         b2internal::2!D.SetAwake(true);
         b2internal::;B.SetAwake(true);
         this.§%! § = param1;
         this.§-4§ = param2;
      }
      
      public function §@!'§() : Boolean
      {
         return this.§&!E§;
      }
      
      public function §03§(param1:Boolean) : void
      {
         b2internal::2!D.SetAwake(true);
         b2internal::;B.SetAwake(true);
         this.§&!E§ = param1;
      }
      
      public function §!^§(param1:Number) : void
      {
         b2internal::2!D.SetAwake(true);
         b2internal::;B.SetAwake(true);
         this.§+>§ = param1;
      }
      
      public function §5t§() : Number
      {
         return this.§+>§;
      }
      
      public function §@!#§(param1:Number) : void
      {
         b2internal::2!D.SetAwake(true);
         b2internal::;B.SetAwake(true);
         this.§]d§ = param1;
      }
      
      public function §5!D§() : Number
      {
         return this.§>G§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::2!D;
         var _loc3_:b2Body = b2internal::;B;
         b2internal::]?.SetV(_loc2_.§05§());
         b2internal::7U.SetV(_loc3_.§05§());
         var _loc6_:b2Transform = _loc2_.§ T§();
         var _loc7_:b2Transform = _loc3_.§ T§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::]?.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::]?.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::7U.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::7U.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §5!M§ = _loc2_.§9g§;
         §+&§ = _loc3_.§9g§;
         §5%§ = _loc2_.§8>§;
         §2]§ = _loc3_.§8>§;
         this.§&9§.SetV(b2Math.§2c§(_loc6_.R,this.§9!M§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§&9§.y - (_loc13_ + _loc9_) * this.§&9§.x;
         this.m_a2 = _loc10_ * this.§&9§.y - _loc11_ * this.§&9§.x;
         this.§9<§ = b2internal::5!M + b2internal::+& + b2internal::5% * this.m_a1 * this.m_a1 + b2internal::2] * this.m_a2 * this.m_a2;
         if(this.§9<§ > Number.MIN_VALUE)
         {
            this.§9<§ = 1 / this.§9<§;
         }
         this.§5!§.SetV(b2Math.§2c§(_loc6_.R,this.§8o§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§5!§.y - (_loc13_ + _loc9_) * this.§5!§.x;
         this.m_s2 = _loc10_ * this.§5!§.y - _loc11_ * this.§5!§.x;
         var _loc14_:Number = b2internal::5!M;
         var _loc15_:Number = b2internal::+&;
         var _loc16_:Number = b2internal::5%;
         var _loc17_:Number = b2internal::2];
         this.§@X§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§@X§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§@X§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§@X§.col2.x = this.§@X§.col1.y;
         this.§@X§.col2.y = _loc16_ + _loc17_;
         this.§@X§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§@X§.col3.x = this.§@X§.col1.z;
         this.§@X§.col3.y = this.§@X§.col2.z;
         this.§@X§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§%+§)
         {
            _loc18_ = this.§&9§.x * _loc12_ + this.§&9§.y * _loc13_;
            if(b2Math.§<!K§(this.§-4§ - this.§%! §) < 2 * b2Settings.b2_linearSlop)
            {
               this.§^!H§ = b2internal::@!L;
            }
            else if(_loc18_ <= this.§%! §)
            {
               if(this.§^!H§ != b2internal::1!6)
               {
                  this.§^!H§ = b2internal::1!6;
                  this.§8v§.z = 0;
               }
            }
            else if(_loc18_ >= this.§-4§)
            {
               if(this.§^!H§ != b2internal::'5)
               {
                  this.§^!H§ = b2internal::'5;
                  this.§8v§.z = 0;
               }
            }
            else
            {
               this.§^!H§ = b2internal::1&;
               this.§8v§.z = 0;
            }
         }
         else
         {
            this.§^!H§ = b2internal::1&;
         }
         if(this.§&!E§ == false)
         {
            this.§>G§ = 0;
         }
         if(param1.§<W§)
         {
            this.§8v§.x *= param1.§5!B§;
            this.§8v§.y *= param1.§5!B§;
            this.§>G§ *= param1.§5!B§;
            _loc19_ = this.§8v§.x * this.§5!§.x + (this.§>G§ + this.§8v§.z) * this.§&9§.x;
            _loc20_ = this.§8v§.x * this.§5!§.y + (this.§>G§ + this.§8v§.z) * this.§&9§.y;
            _loc21_ = this.§8v§.x * this.m_s1 + this.§8v§.y + (this.§>G§ + this.§8v§.z) * this.m_a1;
            _loc22_ = this.§8v§.x * this.m_s2 + this.§8v§.y + (this.§>G§ + this.§8v§.z) * this.m_a2;
            _loc2_.§0+§.x -= b2internal::5!M * _loc19_;
            _loc2_.§0+§.y -= b2internal::5!M * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::5% * _loc21_;
            _loc3_.§0+§.x += b2internal::+& * _loc19_;
            _loc3_.§0+§.y += b2internal::+& * _loc20_;
            _loc3_.m_angularVelocity += b2internal::2] * _loc22_;
         }
         else
         {
            this.§8v§.§^!#§();
            this.§>G§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::2!D;
         var _loc3_:b2Body = b2internal::;B;
         var _loc4_:b2Vec2 = _loc2_.§0+§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§0+§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§&!E§ && this.§^!H§ != b2internal::@!L)
         {
            _loc14_ = this.§&9§.x * (_loc6_.x - _loc4_.x) + this.§&9§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§9<§ * (this.§+>§ - _loc14_);
            _loc16_ = this.§>G§;
            _loc17_ = param1.§7?§ * this.§]d§;
            this.§>G§ = b2Math.§2a§(this.§>G§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§>G§ - _loc16_) * this.§&9§.x;
            _loc9_ = _loc15_ * this.§&9§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::5!M * _loc8_;
            _loc4_.y -= b2internal::5!M * _loc9_;
            _loc5_ -= b2internal::5% * _loc10_;
            _loc6_.x += b2internal::+& * _loc8_;
            _loc6_.y += b2internal::+& * _loc9_;
            _loc7_ += b2internal::2] * _loc11_;
         }
         var _loc12_:Number = this.§5!§.x * (_loc6_.x - _loc4_.x) + this.§5!§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§%+§ && this.§^!H§ != b2internal::1&)
         {
            _loc18_ = this.§&9§.x * (_loc6_.x - _loc4_.x) + this.§&9§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§8v§.Copy();
            _loc20_ = this.§@X§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§8v§.§[X§(_loc20_);
            if(this.§^!H§ == b2internal::1!6)
            {
               this.§8v§.z = b2Math.§&f§(this.§8v§.z,0);
            }
            else if(this.§^!H§ == b2internal::'5)
            {
               this.§8v§.z = b2Math.§2!8§(this.§8v§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§8v§.z - _loc19_.z) * this.§@X§.col3.x;
            _loc22_ = -_loc13_ - (this.§8v§.z - _loc19_.z) * this.§@X§.col3.y;
            _loc23_ = this.§@X§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§8v§.x = _loc23_.x;
            this.§8v§.y = _loc23_.y;
            _loc20_.x = this.§8v§.x - _loc19_.x;
            _loc20_.y = this.§8v§.y - _loc19_.y;
            _loc20_.z = this.§8v§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§5!§.x + _loc20_.z * this.§&9§.x;
            _loc9_ = _loc20_.x * this.§5!§.y + _loc20_.z * this.§&9§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::5!M * _loc8_;
            _loc4_.y -= b2internal::5!M * _loc9_;
            _loc5_ -= b2internal::5% * _loc10_;
            _loc6_.x += b2internal::+& * _loc8_;
            _loc6_.y += b2internal::+& * _loc9_;
            _loc7_ += b2internal::2] * _loc11_;
         }
         else
         {
            _loc24_ = this.§@X§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§8v§.x += _loc24_.x;
            this.§8v§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§5!§.x;
            _loc9_ = _loc24_.x * this.§5!§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::5!M * _loc8_;
            _loc4_.y -= b2internal::5!M * _loc9_;
            _loc5_ -= b2internal::5% * _loc10_;
            _loc6_.x += b2internal::+& * _loc8_;
            _loc6_.y += b2internal::+& * _loc9_;
            _loc7_ += b2internal::2] * _loc11_;
         }
         _loc2_.§0+§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§0+§.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:b2Vec2 = null;
         var _loc4_:b2Body = b2internal::2!D;
         var _loc5_:b2Body = b2internal::;B;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§;!D§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§;!D§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::]?.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::]?.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::7U.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::7U.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§%+§)
         {
            this.§&9§ = b2Math.§2c§(_loc20_,this.§9!M§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§&9§.y - (_loc27_ + _loc23_) * this.§&9§.x;
            this.m_a2 = _loc24_ * this.§&9§.y - _loc25_ * this.§&9§.x;
            _loc35_ = this.§&9§.x * _loc26_ + this.§&9§.y * _loc27_;
            if(b2Math.§<!K§(this.§-4§ - this.§%! §) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§2a§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§<!K§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§%! §)
            {
               _loc19_ = b2Math.§2a§(_loc35_ - this.§%! § + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§%! § - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§-4§)
            {
               _loc19_ = b2Math.§2a§(_loc35_ - this.§-4§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§-4§;
               _loc18_ = true;
            }
         }
         this.§5!§ = b2Math.§2c§(_loc20_,this.§8o§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§5!§.y - (_loc27_ + _loc23_) * this.§5!§.x;
         this.m_s2 = _loc24_ * this.§5!§.y - _loc25_ * this.§5!§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§5!§.x * _loc26_ + this.§5!§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§3_§;
         _loc16_ = b2Math.§&f§(_loc16_,b2Math.§<!K§(_loc29_));
         _loc17_ = b2Math.§<!K§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::5!M;
            _loc13_ = b2internal::+&;
            _loc14_ = b2internal::5%;
            _loc15_ = b2internal::2];
            this.§@X§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§@X§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§@X§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§@X§.col2.x = this.§@X§.col1.y;
            this.§@X§.col2.y = _loc14_ + _loc15_;
            this.§@X§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§@X§.col3.x = this.§@X§.col1.z;
            this.§@X§.col3.y = this.§@X§.col2.z;
            this.§@X§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§@X§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::5!M;
            _loc13_ = b2internal::+&;
            _loc14_ = b2internal::5%;
            _loc15_ = b2internal::2];
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§@X§.col1.Set(_loc36_,_loc37_,0);
            this.§@X§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§@X§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§5!§.x + _loc28_.z * this.§&9§.x;
         var _loc32_:Number = _loc28_.x * this.§5!§.y + _loc28_.z * this.§&9§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::5!M * _loc31_;
         _loc6_.y -= b2internal::5!M * _loc32_;
         _loc7_ -= b2internal::5% * _loc33_;
         _loc8_.x += b2internal::+& * _loc31_;
         _loc8_.y += b2internal::+& * _loc32_;
         _loc9_ += b2internal::2] * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§-D§();
         _loc5_.§-D§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
