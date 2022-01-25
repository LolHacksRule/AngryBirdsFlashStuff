package §4N§
{
   import §"!R§.b2Settings;
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §=!U§.b2TimeStep;
   import §implements§.b2Mat22;
   import §implements§.b2Mat33;
   import §implements§.b2Math;
   import §implements§.b2Transform;
   import §implements§.b2Vec2;
   import §implements§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §5+§:b2Vec2;
      
      private var §6!4§:b2Vec2;
      
      private var §=%§:Number;
      
      private var §=!E§:b2Vec2;
      
      private var §@!+§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §'x§:b2Mat33;
      
      private var §%!3§:b2Vec3;
      
      private var §4'§:Number;
      
      private var §?!#§:Number;
      
      private var §;!S§:Number;
      
      private var §?C§:Number;
      
      private var §[!S§:Number;
      
      private var §+!3§:Number;
      
      private var §-P§:Boolean;
      
      private var §7!J§:Boolean;
      
      private var §,L§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§5+§ = new b2Vec2();
         this.§6!4§ = new b2Vec2();
         this.§=!E§ = new b2Vec2();
         this.§@!+§ = new b2Vec2();
         this.§'x§ = new b2Mat33();
         this.§%!3§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§7z§);
         this.m_localAnchor2.SetV(param1.§#t§);
         this.§5+§.SetV(param1.§,!1§);
         this.§6!4§.x = -this.§5+§.y;
         this.§6!4§.y = this.§5+§.x;
         this.§=%§ = param1.§^3§;
         this.§%!3§.§^!&§();
         this.§4'§ = 0;
         this.§?!#§ = 0;
         this.§;!S§ = param1.§%$§;
         this.§?C§ = param1.§-u§;
         this.§[!S§ = param1.§]!L§;
         this.§+!3§ = param1.motorSpeed;
         this.§-P§ = param1.§&!8§;
         this.§7!J§ = param1.§>&§;
         this.§,L§ = b2internal::=!X;
         this.§=!E§.§^!&§();
         this.§@!+§.§^!&§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^!N.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::1A.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§%!3§.x * this.§@!+§.x + (this.§?!#§ + this.§%!3§.z) * this.§=!E§.x),param1 * (this.§%!3§.x * this.§@!+§.y + (this.§?!#§ + this.§%!3§.z) * this.§=!E§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§%!3§.y;
      }
      
      public function §7e§() : Number
      {
         var _loc1_:b2Body = b2internal::^!N;
         var _loc2_:b2Body = b2internal::1A;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§@q§(this.§5+§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §>G§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::^!N;
         var _loc2_:b2Body = b2internal::1A;
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
         var _loc15_:b2Vec2 = _loc1_.§@q§(this.§5+§);
         var _loc16_:b2Vec2 = _loc1_.§,!@§;
         var _loc17_:b2Vec2 = _loc2_.§,!@§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §8!A§() : Boolean
      {
         return this.§-P§;
      }
      
      public function §0!W§(param1:Boolean) : void
      {
         b2internal::^!N.SetAwake(true);
         b2internal::1A.SetAwake(true);
         this.§-P§ = param1;
      }
      
      public function §0,§() : Number
      {
         return this.§;!S§;
      }
      
      public function §>h§() : Number
      {
         return this.§?C§;
      }
      
      public function §`!=§(param1:Number, param2:Number) : void
      {
         b2internal::^!N.SetAwake(true);
         b2internal::1A.SetAwake(true);
         this.§;!S§ = param1;
         this.§?C§ = param2;
      }
      
      public function §3!T§() : Boolean
      {
         return this.§7!J§;
      }
      
      public function § !H§(param1:Boolean) : void
      {
         b2internal::^!N.SetAwake(true);
         b2internal::1A.SetAwake(true);
         this.§7!J§ = param1;
      }
      
      public function §,o§(param1:Number) : void
      {
         b2internal::^!N.SetAwake(true);
         b2internal::1A.SetAwake(true);
         this.§+!3§ = param1;
      }
      
      public function §8%§() : Number
      {
         return this.§+!3§;
      }
      
      public function §^=§(param1:Number) : void
      {
         b2internal::^!N.SetAwake(true);
         b2internal::1A.SetAwake(true);
         this.§[!S§ = param1;
      }
      
      public function §`!K§() : Number
      {
         return this.§?!#§;
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
         var _loc2_:b2Body = b2internal::^!N;
         var _loc3_:b2Body = b2internal::1A;
         b2internal::2+.SetV(_loc2_.§&!D§());
         b2internal::7^.SetV(_loc3_.§&!D§());
         var _loc6_:b2Transform = _loc2_.§'_§();
         var _loc7_:b2Transform = _loc3_.§'_§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::2+.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::2+.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::7^.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::7^.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §try§ = _loc2_.§1!G§;
         §0!?§ = _loc3_.§1!G§;
         §;P§ = _loc2_.§+$§;
         §^!9§ = _loc3_.§+$§;
         this.§=!E§.SetV(b2Math.§`e§(_loc6_.R,this.§5+§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§=!E§.y - (_loc13_ + _loc9_) * this.§=!E§.x;
         this.m_a2 = _loc10_ * this.§=!E§.y - _loc11_ * this.§=!E§.x;
         this.§4'§ = b2internal::try + b2internal::0!? + b2internal::;P * this.m_a1 * this.m_a1 + b2internal::^!9 * this.m_a2 * this.m_a2;
         if(this.§4'§ > Number.MIN_VALUE)
         {
            this.§4'§ = 1 / this.§4'§;
         }
         this.§@!+§.SetV(b2Math.§`e§(_loc6_.R,this.§6!4§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§@!+§.y - (_loc13_ + _loc9_) * this.§@!+§.x;
         this.m_s2 = _loc10_ * this.§@!+§.y - _loc11_ * this.§@!+§.x;
         var _loc14_:Number = b2internal::try;
         var _loc15_:Number = b2internal::0!?;
         var _loc16_:Number = b2internal::;P;
         var _loc17_:Number = b2internal::^!9;
         this.§'x§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§'x§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§'x§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§'x§.col2.x = this.§'x§.col1.y;
         this.§'x§.col2.y = _loc16_ + _loc17_;
         this.§'x§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§'x§.col3.x = this.§'x§.col1.z;
         this.§'x§.col3.y = this.§'x§.col2.z;
         this.§'x§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§-P§)
         {
            _loc18_ = this.§=!E§.x * _loc12_ + this.§=!E§.y * _loc13_;
            if(b2Math.§5'§(this.§?C§ - this.§;!S§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§,L§ = b2internal::+2;
            }
            else if(_loc18_ <= this.§;!S§)
            {
               if(this.§,L§ != b2internal::"!3)
               {
                  this.§,L§ = b2internal::"!3;
                  this.§%!3§.z = 0;
               }
            }
            else if(_loc18_ >= this.§?C§)
            {
               if(this.§,L§ != b2internal::`p)
               {
                  this.§,L§ = b2internal::`p;
                  this.§%!3§.z = 0;
               }
            }
            else
            {
               this.§,L§ = b2internal::=!X;
               this.§%!3§.z = 0;
            }
         }
         else
         {
            this.§,L§ = b2internal::=!X;
         }
         if(this.§7!J§ == false)
         {
            this.§?!#§ = 0;
         }
         if(param1.§5R§)
         {
            this.§%!3§.x *= param1.§5!Y§;
            this.§%!3§.y *= param1.§5!Y§;
            this.§?!#§ *= param1.§5!Y§;
            _loc19_ = this.§%!3§.x * this.§@!+§.x + (this.§?!#§ + this.§%!3§.z) * this.§=!E§.x;
            _loc20_ = this.§%!3§.x * this.§@!+§.y + (this.§?!#§ + this.§%!3§.z) * this.§=!E§.y;
            _loc21_ = this.§%!3§.x * this.m_s1 + this.§%!3§.y + (this.§?!#§ + this.§%!3§.z) * this.m_a1;
            _loc22_ = this.§%!3§.x * this.m_s2 + this.§%!3§.y + (this.§?!#§ + this.§%!3§.z) * this.m_a2;
            _loc2_.§,!@§.x -= b2internal::try * _loc19_;
            _loc2_.§,!@§.y -= b2internal::try * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::;P * _loc21_;
            _loc3_.§,!@§.x += b2internal::0!? * _loc19_;
            _loc3_.§,!@§.y += b2internal::0!? * _loc20_;
            _loc3_.m_angularVelocity += b2internal::^!9 * _loc22_;
         }
         else
         {
            this.§%!3§.§^!&§();
            this.§?!#§ = 0;
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
         var _loc2_:b2Body = b2internal::^!N;
         var _loc3_:b2Body = b2internal::1A;
         var _loc4_:b2Vec2 = _loc2_.§,!@§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§,!@§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§7!J§ && this.§,L§ != b2internal::+2)
         {
            _loc14_ = this.§=!E§.x * (_loc6_.x - _loc4_.x) + this.§=!E§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§4'§ * (this.§+!3§ - _loc14_);
            _loc16_ = this.§?!#§;
            _loc17_ = param1.§5V§ * this.§[!S§;
            this.§?!#§ = b2Math.§+I§(this.§?!#§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§?!#§ - _loc16_) * this.§=!E§.x;
            _loc9_ = _loc15_ * this.§=!E§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::try * _loc8_;
            _loc4_.y -= b2internal::try * _loc9_;
            _loc5_ -= b2internal::;P * _loc10_;
            _loc6_.x += b2internal::0!? * _loc8_;
            _loc6_.y += b2internal::0!? * _loc9_;
            _loc7_ += b2internal::^!9 * _loc11_;
         }
         var _loc12_:Number = this.§@!+§.x * (_loc6_.x - _loc4_.x) + this.§@!+§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§-P§ && this.§,L§ != b2internal::=!X)
         {
            _loc18_ = this.§=!E§.x * (_loc6_.x - _loc4_.x) + this.§=!E§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§%!3§.Copy();
            _loc20_ = this.§'x§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§%!3§.§=C§(_loc20_);
            if(this.§,L§ == b2internal::"!3)
            {
               this.§%!3§.z = b2Math.§"!X§(this.§%!3§.z,0);
            }
            else if(this.§,L§ == b2internal::`p)
            {
               this.§%!3§.z = b2Math.§^Q§(this.§%!3§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§%!3§.z - _loc19_.z) * this.§'x§.col3.x;
            _loc22_ = -_loc13_ - (this.§%!3§.z - _loc19_.z) * this.§'x§.col3.y;
            _loc23_ = this.§'x§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§%!3§.x = _loc23_.x;
            this.§%!3§.y = _loc23_.y;
            _loc20_.x = this.§%!3§.x - _loc19_.x;
            _loc20_.y = this.§%!3§.y - _loc19_.y;
            _loc20_.z = this.§%!3§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§@!+§.x + _loc20_.z * this.§=!E§.x;
            _loc9_ = _loc20_.x * this.§@!+§.y + _loc20_.z * this.§=!E§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::try * _loc8_;
            _loc4_.y -= b2internal::try * _loc9_;
            _loc5_ -= b2internal::;P * _loc10_;
            _loc6_.x += b2internal::0!? * _loc8_;
            _loc6_.y += b2internal::0!? * _loc9_;
            _loc7_ += b2internal::^!9 * _loc11_;
         }
         else
         {
            _loc24_ = this.§'x§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§%!3§.x += _loc24_.x;
            this.§%!3§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§@!+§.x;
            _loc9_ = _loc24_.x * this.§@!+§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::try * _loc8_;
            _loc4_.y -= b2internal::try * _loc9_;
            _loc5_ -= b2internal::;P * _loc10_;
            _loc6_.x += b2internal::0!? * _loc8_;
            _loc6_.y += b2internal::0!? * _loc9_;
            _loc7_ += b2internal::^!9 * _loc11_;
         }
         _loc2_.§,!@§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§,!@§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::^!N;
         var _loc5_:b2Body = b2internal::1A;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§-!M§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§-!M§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::2+.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::2+.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::7^.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::7^.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§-P§)
         {
            this.§=!E§ = b2Math.§`e§(_loc20_,this.§5+§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§=!E§.y - (_loc27_ + _loc23_) * this.§=!E§.x;
            this.m_a2 = _loc24_ * this.§=!E§.y - _loc25_ * this.§=!E§.x;
            _loc35_ = this.§=!E§.x * _loc26_ + this.§=!E§.y * _loc27_;
            if(b2Math.§5'§(this.§?C§ - this.§;!S§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§+I§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§5'§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§;!S§)
            {
               _loc19_ = b2Math.§+I§(_loc35_ - this.§;!S§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§;!S§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§?C§)
            {
               _loc19_ = b2Math.§+I§(_loc35_ - this.§?C§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§?C§;
               _loc18_ = true;
            }
         }
         this.§@!+§ = b2Math.§`e§(_loc20_,this.§6!4§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§@!+§.y - (_loc27_ + _loc23_) * this.§@!+§.x;
         this.m_s2 = _loc24_ * this.§@!+§.y - _loc25_ * this.§@!+§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§@!+§.x * _loc26_ + this.§@!+§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§=%§;
         _loc16_ = b2Math.§"!X§(_loc16_,b2Math.§5'§(_loc29_));
         _loc17_ = b2Math.§5'§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::try;
            _loc13_ = b2internal::0!?;
            _loc14_ = b2internal::;P;
            _loc15_ = b2internal::^!9;
            this.§'x§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§'x§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§'x§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§'x§.col2.x = this.§'x§.col1.y;
            this.§'x§.col2.y = _loc14_ + _loc15_;
            this.§'x§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§'x§.col3.x = this.§'x§.col1.z;
            this.§'x§.col3.y = this.§'x§.col2.z;
            this.§'x§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§'x§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::try;
            _loc13_ = b2internal::0!?;
            _loc14_ = b2internal::;P;
            _loc15_ = b2internal::^!9;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§'x§.col1.Set(_loc36_,_loc37_,0);
            this.§'x§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§'x§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§@!+§.x + _loc28_.z * this.§=!E§.x;
         var _loc32_:Number = _loc28_.x * this.§@!+§.y + _loc28_.z * this.§=!E§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::try * _loc31_;
         _loc6_.y -= b2internal::try * _loc32_;
         _loc7_ -= b2internal::;P * _loc33_;
         _loc8_.x += b2internal::0!? * _loc31_;
         _loc8_.y += b2internal::0!? * _loc32_;
         _loc9_ += b2internal::^!9 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§<8§();
         _loc5_.§<8§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
