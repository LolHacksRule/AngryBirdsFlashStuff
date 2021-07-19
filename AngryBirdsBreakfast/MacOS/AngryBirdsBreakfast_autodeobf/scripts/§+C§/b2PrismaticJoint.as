package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Mat33;
   import §6Z§.b2Math;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §6Z§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §]!<§:b2Vec2;
      
      private var §^!H§:b2Vec2;
      
      private var §@@§:Number;
      
      private var §"q§:b2Vec2;
      
      private var §"!g§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §#!N§:b2Mat33;
      
      private var §0!F§:b2Vec3;
      
      private var §9q§:Number;
      
      private var §8!9§:Number;
      
      private var §3!<§:Number;
      
      private var §"b§:Number;
      
      private var §[D§:Number;
      
      private var §0!9§:Number;
      
      private var § !§:Boolean;
      
      private var §%O§:Boolean;
      
      private var §%!T§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§]!<§ = new b2Vec2();
         this.§^!H§ = new b2Vec2();
         this.§"q§ = new b2Vec2();
         this.§"!g§ = new b2Vec2();
         this.§#!N§ = new b2Mat33();
         this.§0!F§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§0O§);
         this.m_localAnchor2.SetV(param1.§ @§);
         this.§]!<§.SetV(param1.§@`§);
         this.§^!H§.x = -this.§]!<§.y;
         this.§^!H§.y = this.§]!<§.x;
         this.§@@§ = param1.§<!b§;
         this.§0!F§.§5!H§();
         this.§9q§ = 0;
         this.§8!9§ = 0;
         this.§3!<§ = param1.§9"'§;
         this.§"b§ = param1.§<"%§;
         this.§[D§ = param1.§8!B§;
         this.§0!9§ = param1.motorSpeed;
         this.§ !§ = param1.§+!<§;
         this.§%O§ = param1.§[!W§;
         this.§%!T§ = b2internal::-!Z;
         this.§"q§.§5!H§();
         this.§"!g§.§5!H§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§0!F§.x * this.§"!g§.x + (this.§8!9§ + this.§0!F§.z) * this.§"q§.x),param1 * (this.§0!F§.x * this.§"!g§.y + (this.§8!9§ + this.§0!F§.z) * this.§"q§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0!F§.y;
      }
      
      public function §#0§() : Number
      {
         var _loc1_:b2Body = b2internal::[Z;
         var _loc2_:b2Body = b2internal::8!F;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§3!D§(this.§]!<§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §="'§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::[Z;
         var _loc2_:b2Body = b2internal::8!F;
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
         var _loc15_:b2Vec2 = _loc1_.§3!D§(this.§]!<§);
         var _loc16_:b2Vec2 = _loc1_.§?!^§;
         var _loc17_:b2Vec2 = _loc2_.§?!^§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §!!B§() : Boolean
      {
         return this.§ !§;
      }
      
      public function §2!4§(param1:Boolean) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.§ !§ = param1;
      }
      
      public function §]!7§() : Number
      {
         return this.§3!<§;
      }
      
      public function §%!Z§() : Number
      {
         return this.§"b§;
      }
      
      public function §;1§(param1:Number, param2:Number) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.§3!<§ = param1;
         this.§"b§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§%O§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.§%O§ = param1;
      }
      
      public function §"!v§(param1:Number) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.§0!9§ = param1;
      }
      
      public function §7"%§() : Number
      {
         return this.§0!9§;
      }
      
      public function §5!e§(param1:Number) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.§[D§ = param1;
      }
      
      public function §3""§() : Number
      {
         return this.§8!9§;
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
         var _loc2_:b2Body = b2internal::[Z;
         var _loc3_:b2Body = b2internal::8!F;
         b2internal::[y.SetV(_loc2_.§8!H§());
         b2internal::]i.SetV(_loc3_.§8!H§());
         var _loc6_:b2Transform = _loc2_.§#%§();
         var _loc7_:b2Transform = _loc3_.§#%§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::[y.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::[y.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::]i.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::]i.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §>+§ = _loc2_.§4!&§;
         §5""§ = _loc3_.§4!&§;
         §`2§ = _loc2_.§`!`§;
         §,T§ = _loc3_.§`!`§;
         this.§"q§.SetV(b2Math.§"]§(_loc6_.R,this.§]!<§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§"q§.y - (_loc13_ + _loc9_) * this.§"q§.x;
         this.m_a2 = _loc10_ * this.§"q§.y - _loc11_ * this.§"q§.x;
         this.§9q§ = b2internal::>+ + b2internal::5"" + b2internal::`2 * this.m_a1 * this.m_a1 + b2internal::,T * this.m_a2 * this.m_a2;
         if(this.§9q§ > Number.MIN_VALUE)
         {
            this.§9q§ = 1 / this.§9q§;
         }
         this.§"!g§.SetV(b2Math.§"]§(_loc6_.R,this.§^!H§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§"!g§.y - (_loc13_ + _loc9_) * this.§"!g§.x;
         this.m_s2 = _loc10_ * this.§"!g§.y - _loc11_ * this.§"!g§.x;
         var _loc14_:Number = b2internal::>+;
         var _loc15_:Number = b2internal::5"";
         var _loc16_:Number = b2internal::`2;
         var _loc17_:Number = b2internal::,T;
         this.§#!N§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§#!N§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§#!N§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§#!N§.col2.x = this.§#!N§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§#!N§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§#!N§.col2.y = 1;
         }
         this.§#!N§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§#!N§.col3.x = this.§#!N§.col1.z;
         this.§#!N§.col3.y = this.§#!N§.col2.z;
         this.§#!N§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§ !§)
         {
            _loc18_ = this.§"q§.x * _loc12_ + this.§"q§.y * _loc13_;
            if(b2Math.§"!2§(this.§"b§ - this.§3!<§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§%!T§ = b2internal::8!E;
            }
            else if(_loc18_ <= this.§3!<§)
            {
               if(this.§%!T§ != b2internal::@<)
               {
                  this.§%!T§ = b2internal::@<;
                  this.§0!F§.z = 0;
               }
            }
            else if(_loc18_ >= this.§"b§)
            {
               if(this.§%!T§ != b2internal::%S)
               {
                  this.§%!T§ = b2internal::%S;
                  this.§0!F§.z = 0;
               }
            }
            else
            {
               this.§%!T§ = b2internal::-!Z;
               this.§0!F§.z = 0;
            }
         }
         else
         {
            this.§%!T§ = b2internal::-!Z;
            this.§0!F§.z = 0;
         }
         if(this.§%O§ == false)
         {
            this.§8!9§ = 0;
         }
         if(param1.§?j§)
         {
            this.§0!F§.x *= param1.§-k§;
            this.§0!F§.y *= param1.§-k§;
            this.§8!9§ *= param1.§-k§;
            _loc19_ = this.§0!F§.x * this.§"!g§.x + (this.§8!9§ + this.§0!F§.z) * this.§"q§.x;
            _loc20_ = this.§0!F§.x * this.§"!g§.y + (this.§8!9§ + this.§0!F§.z) * this.§"q§.y;
            _loc21_ = this.§0!F§.x * this.m_s1 + this.§0!F§.y + (this.§8!9§ + this.§0!F§.z) * this.m_a1;
            _loc22_ = this.§0!F§.x * this.m_s2 + this.§0!F§.y + (this.§8!9§ + this.§0!F§.z) * this.m_a2;
            _loc2_.§?!^§.x -= b2internal::>+ * _loc19_;
            _loc2_.§?!^§.y -= b2internal::>+ * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::`2 * _loc21_;
            _loc3_.§?!^§.x += b2internal::5"" * _loc19_;
            _loc3_.§?!^§.y += b2internal::5"" * _loc20_;
            _loc3_.m_angularVelocity += b2internal::,T * _loc22_;
         }
         else
         {
            this.§0!F§.§5!H§();
            this.§8!9§ = 0;
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
         var _loc2_:b2Body = b2internal::[Z;
         var _loc3_:b2Body = b2internal::8!F;
         var _loc4_:b2Vec2 = _loc2_.§?!^§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§?!^§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§%O§ && this.§%!T§ != b2internal::8!E)
         {
            _loc14_ = this.§"q§.x * (_loc6_.x - _loc4_.x) + this.§"q§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§9q§ * (this.§0!9§ - _loc14_);
            _loc16_ = this.§8!9§;
            _loc17_ = param1.§`!9§ * this.§[D§;
            this.§8!9§ = b2Math.§&a§(this.§8!9§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§8!9§ - _loc16_) * this.§"q§.x;
            _loc9_ = _loc15_ * this.§"q§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::>+ * _loc8_;
            _loc4_.y -= b2internal::>+ * _loc9_;
            _loc5_ -= b2internal::`2 * _loc10_;
            _loc6_.x += b2internal::5"" * _loc8_;
            _loc6_.y += b2internal::5"" * _loc9_;
            _loc7_ += b2internal::,T * _loc11_;
         }
         var _loc12_:Number = this.§"!g§.x * (_loc6_.x - _loc4_.x) + this.§"!g§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§ !§ && this.§%!T§ != b2internal::-!Z)
         {
            _loc18_ = this.§"q§.x * (_loc6_.x - _loc4_.x) + this.§"q§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§0!F§.Copy();
            _loc20_ = this.§#!N§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§0!F§.§-!r§(_loc20_);
            if(this.§%!T§ == b2internal::@<)
            {
               this.§0!F§.z = b2Math.§"!8§(this.§0!F§.z,0);
            }
            else if(this.§%!T§ == b2internal::%S)
            {
               this.§0!F§.z = b2Math.§=t§(this.§0!F§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§0!F§.z - _loc19_.z) * this.§#!N§.col3.x;
            _loc22_ = -_loc13_ - (this.§0!F§.z - _loc19_.z) * this.§#!N§.col3.y;
            _loc23_ = this.§#!N§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§0!F§.x = _loc23_.x;
            this.§0!F§.y = _loc23_.y;
            _loc20_.x = this.§0!F§.x - _loc19_.x;
            _loc20_.y = this.§0!F§.y - _loc19_.y;
            _loc20_.z = this.§0!F§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§"!g§.x + _loc20_.z * this.§"q§.x;
            _loc9_ = _loc20_.x * this.§"!g§.y + _loc20_.z * this.§"q§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::>+ * _loc8_;
            _loc4_.y -= b2internal::>+ * _loc9_;
            _loc5_ -= b2internal::`2 * _loc10_;
            _loc6_.x += b2internal::5"" * _loc8_;
            _loc6_.y += b2internal::5"" * _loc9_;
            _loc7_ += b2internal::,T * _loc11_;
         }
         else
         {
            _loc24_ = this.§#!N§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§0!F§.x += _loc24_.x;
            this.§0!F§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§"!g§.x;
            _loc9_ = _loc24_.x * this.§"!g§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::>+ * _loc8_;
            _loc4_.y -= b2internal::>+ * _loc9_;
            _loc5_ -= b2internal::`2 * _loc10_;
            _loc6_.x += b2internal::5"" * _loc8_;
            _loc6_.y += b2internal::5"" * _loc9_;
            _loc7_ += b2internal::,T * _loc11_;
         }
         _loc2_.§?!^§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§?!^§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::[Z;
         var _loc5_:b2Body = b2internal::8!F;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§;!1§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§;!1§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::[y.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::[y.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::]i.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::]i.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§ !§)
         {
            this.§"q§ = b2Math.§"]§(_loc20_,this.§]!<§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§"q§.y - (_loc27_ + _loc23_) * this.§"q§.x;
            this.m_a2 = _loc24_ * this.§"q§.y - _loc25_ * this.§"q§.x;
            _loc35_ = this.§"q§.x * _loc26_ + this.§"q§.y * _loc27_;
            if(b2Math.§"!2§(this.§"b§ - this.§3!<§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§&a§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§"!2§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§3!<§)
            {
               _loc19_ = b2Math.§&a§(_loc35_ - this.§3!<§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§3!<§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§"b§)
            {
               _loc19_ = b2Math.§&a§(_loc35_ - this.§"b§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§"b§;
               _loc18_ = true;
            }
         }
         this.§"!g§ = b2Math.§"]§(_loc20_,this.§^!H§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§"!g§.y - (_loc27_ + _loc23_) * this.§"!g§.x;
         this.m_s2 = _loc24_ * this.§"!g§.y - _loc25_ * this.§"!g§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§"!g§.x * _loc26_ + this.§"!g§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§@@§;
         _loc16_ = b2Math.§"!8§(_loc16_,b2Math.§"!2§(_loc29_));
         _loc17_ = b2Math.§"!2§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::>+;
            _loc13_ = b2internal::5"";
            _loc14_ = b2internal::`2;
            _loc15_ = b2internal::,T;
            this.§#!N§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§#!N§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§#!N§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§#!N§.col2.x = this.§#!N§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§#!N§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§#!N§.col2.y = 1;
            }
            this.§#!N§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§#!N§.col3.x = this.§#!N§.col1.z;
            this.§#!N§.col3.y = this.§#!N§.col2.z;
            this.§#!N§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§#!N§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::>+;
            _loc13_ = b2internal::5"";
            _loc14_ = b2internal::`2;
            _loc15_ = b2internal::,T;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§#!N§.col1.Set(_loc36_,_loc37_,0);
            this.§#!N§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§#!N§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§"!g§.x + _loc28_.z * this.§"q§.x;
         var _loc32_:Number = _loc28_.x * this.§"!g§.y + _loc28_.z * this.§"q§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::>+ * _loc31_;
         _loc6_.y -= b2internal::>+ * _loc32_;
         _loc7_ -= b2internal::`2 * _loc33_;
         _loc8_.x += b2internal::5"" * _loc31_;
         _loc8_.y += b2internal::5"" * _loc32_;
         _loc9_ += b2internal::,T * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§-F§();
         _loc5_.§-F§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
