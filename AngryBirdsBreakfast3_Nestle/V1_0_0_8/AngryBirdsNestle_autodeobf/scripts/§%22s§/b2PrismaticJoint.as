package §"s§
{
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2TimeStep;
   import §[K§.b2Mat22;
   import §[K§.b2Mat33;
   import §[K§.b2Math;
   import §[K§.b2Transform;
   import §[K§.b2Vec2;
   import §[K§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var § !>§:b2Vec2;
      
      private var §7!N§:b2Vec2;
      
      private var §9!u§:Number;
      
      private var §3o§:b2Vec2;
      
      private var §!!v§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §]!Y§:b2Mat33;
      
      private var §+f§:b2Vec3;
      
      private var §;S§:Number;
      
      private var §>h§:Number;
      
      private var §[B§:Number;
      
      private var §%!5§:Number;
      
      private var §3!8§:Number;
      
      private var §0Y§:Number;
      
      private var §1J§:Boolean;
      
      private var §==§:Boolean;
      
      private var §6!s§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ !>§ = new b2Vec2();
         this.§7!N§ = new b2Vec2();
         this.§3o§ = new b2Vec2();
         this.§!!v§ = new b2Vec2();
         this.§]!Y§ = new b2Mat33();
         this.§+f§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§#J§);
         this.m_localAnchor2.SetV(param1.§7!A§);
         this.§ !>§.SetV(param1.§?!@§);
         this.§7!N§.x = -this.§ !>§.y;
         this.§7!N§.y = this.§ !>§.x;
         this.§9!u§ = param1.§[§;
         this.§+f§.§3S§();
         this.§;S§ = 0;
         this.§>h§ = 0;
         this.§[B§ = param1.§<""§;
         this.§%!5§ = param1.§^!H§;
         this.§3!8§ = param1.§="&§;
         this.§0Y§ = param1.motorSpeed;
         this.§1J§ = param1.§ b§;
         this.§==§ = param1.§-!W§;
         this.§6!s§ = b2internal::4!0;
         this.§3o§.§3S§();
         this.§!!v§.§3S§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::;l.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§+f§.x * this.§!!v§.x + (this.§>h§ + this.§+f§.z) * this.§3o§.x),param1 * (this.§+f§.x * this.§!!v§.y + (this.§>h§ + this.§+f§.z) * this.§3o§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§+f§.y;
      }
      
      public function § "§() : Number
      {
         var _loc1_:b2Body = b2internal::;l;
         var _loc2_:b2Body = b2internal::2z;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§'!y§(this.§ !>§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §!!R§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::;l;
         var _loc2_:b2Body = b2internal::2z;
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
         var _loc15_:b2Vec2 = _loc1_.§'!y§(this.§ !>§);
         var _loc16_:b2Vec2 = _loc1_.§;B§;
         var _loc17_:b2Vec2 = _loc2_.§;B§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §[-§() : Boolean
      {
         return this.§1J§;
      }
      
      public function §>!`§(param1:Boolean) : void
      {
         b2internal::;l.SetAwake(true);
         b2internal::2z.SetAwake(true);
         this.§1J§ = param1;
      }
      
      public function §while§() : Number
      {
         return this.§[B§;
      }
      
      public function §4w§() : Number
      {
         return this.§%!5§;
      }
      
      public function §?"-§(param1:Number, param2:Number) : void
      {
         b2internal::;l.SetAwake(true);
         b2internal::2z.SetAwake(true);
         this.§[B§ = param1;
         this.§%!5§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§==§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::;l.SetAwake(true);
         b2internal::2z.SetAwake(true);
         this.§==§ = param1;
      }
      
      public function §case§(param1:Number) : void
      {
         b2internal::;l.SetAwake(true);
         b2internal::2z.SetAwake(true);
         this.§0Y§ = param1;
      }
      
      public function §5k§() : Number
      {
         return this.§0Y§;
      }
      
      public function §"b§(param1:Number) : void
      {
         b2internal::;l.SetAwake(true);
         b2internal::2z.SetAwake(true);
         this.§3!8§ = param1;
      }
      
      public function §[!P§() : Number
      {
         return this.§>h§;
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
         var _loc2_:b2Body = b2internal::;l;
         var _loc3_:b2Body = b2internal::2z;
         b2internal::?a.SetV(_loc2_.§&!C§());
         b2internal::%!f.SetV(_loc3_.§&!C§());
         var _loc6_:b2Transform = _loc2_.§0!_§();
         var _loc7_:b2Transform = _loc3_.§0!_§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::?a.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::?a.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::%!f.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::%!f.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §1!-§ = _loc2_.§]p§;
         §#S§ = _loc3_.§]p§;
         §,!y§ = _loc2_.§;!$§;
         §&A§ = _loc3_.§;!$§;
         this.§3o§.SetV(b2Math.§1F§(_loc6_.R,this.§ !>§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§3o§.y - (_loc13_ + _loc9_) * this.§3o§.x;
         this.m_a2 = _loc10_ * this.§3o§.y - _loc11_ * this.§3o§.x;
         this.§;S§ = b2internal::1!- + b2internal::#S + b2internal::,!y * this.m_a1 * this.m_a1 + b2internal::&A * this.m_a2 * this.m_a2;
         if(this.§;S§ > Number.MIN_VALUE)
         {
            this.§;S§ = 1 / this.§;S§;
         }
         this.§!!v§.SetV(b2Math.§1F§(_loc6_.R,this.§7!N§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§!!v§.y - (_loc13_ + _loc9_) * this.§!!v§.x;
         this.m_s2 = _loc10_ * this.§!!v§.y - _loc11_ * this.§!!v§.x;
         var _loc14_:Number = b2internal::1!-;
         var _loc15_:Number = b2internal::#S;
         var _loc16_:Number = b2internal::,!y;
         var _loc17_:Number = b2internal::&A;
         this.§]!Y§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§]!Y§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§]!Y§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§]!Y§.col2.x = this.§]!Y§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§]!Y§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§]!Y§.col2.y = 1;
         }
         this.§]!Y§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§]!Y§.col3.x = this.§]!Y§.col1.z;
         this.§]!Y§.col3.y = this.§]!Y§.col2.z;
         this.§]!Y§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§1J§)
         {
            _loc18_ = this.§3o§.x * _loc12_ + this.§3o§.y * _loc13_;
            if(b2Math.§-L§(this.§%!5§ - this.§[B§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§6!s§ = b2internal::-!F;
            }
            else if(_loc18_ <= this.§[B§)
            {
               if(this.§6!s§ != b2internal::,!?)
               {
                  this.§6!s§ = b2internal::,!?;
                  this.§+f§.z = 0;
               }
            }
            else if(_loc18_ >= this.§%!5§)
            {
               if(this.§6!s§ != b2internal::&!d)
               {
                  this.§6!s§ = b2internal::&!d;
                  this.§+f§.z = 0;
               }
            }
            else
            {
               this.§6!s§ = b2internal::4!0;
               this.§+f§.z = 0;
            }
         }
         else
         {
            this.§6!s§ = b2internal::4!0;
            this.§+f§.z = 0;
         }
         if(this.§==§ == false)
         {
            this.§>h§ = 0;
         }
         if(param1.§8"4§)
         {
            this.§+f§.x *= param1.§1!+§;
            this.§+f§.y *= param1.§1!+§;
            this.§>h§ *= param1.§1!+§;
            _loc19_ = this.§+f§.x * this.§!!v§.x + (this.§>h§ + this.§+f§.z) * this.§3o§.x;
            _loc20_ = this.§+f§.x * this.§!!v§.y + (this.§>h§ + this.§+f§.z) * this.§3o§.y;
            _loc21_ = this.§+f§.x * this.m_s1 + this.§+f§.y + (this.§>h§ + this.§+f§.z) * this.m_a1;
            _loc22_ = this.§+f§.x * this.m_s2 + this.§+f§.y + (this.§>h§ + this.§+f§.z) * this.m_a2;
            _loc2_.§;B§.x -= b2internal::1!- * _loc19_;
            _loc2_.§;B§.y -= b2internal::1!- * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::,!y * _loc21_;
            _loc3_.§;B§.x += b2internal::#S * _loc19_;
            _loc3_.§;B§.y += b2internal::#S * _loc20_;
            _loc3_.m_angularVelocity += b2internal::&A * _loc22_;
         }
         else
         {
            this.§+f§.§3S§();
            this.§>h§ = 0;
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
         var _loc2_:b2Body = b2internal::;l;
         var _loc3_:b2Body = b2internal::2z;
         var _loc4_:b2Vec2 = _loc2_.§;B§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§;B§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§==§ && this.§6!s§ != b2internal::-!F)
         {
            _loc14_ = this.§3o§.x * (_loc6_.x - _loc4_.x) + this.§3o§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§;S§ * (this.§0Y§ - _loc14_);
            _loc16_ = this.§>h§;
            _loc17_ = param1.§>!W§ * this.§3!8§;
            this.§>h§ = b2Math.§1!s§(this.§>h§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§>h§ - _loc16_) * this.§3o§.x;
            _loc9_ = _loc15_ * this.§3o§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::1!- * _loc8_;
            _loc4_.y -= b2internal::1!- * _loc9_;
            _loc5_ -= b2internal::,!y * _loc10_;
            _loc6_.x += b2internal::#S * _loc8_;
            _loc6_.y += b2internal::#S * _loc9_;
            _loc7_ += b2internal::&A * _loc11_;
         }
         var _loc12_:Number = this.§!!v§.x * (_loc6_.x - _loc4_.x) + this.§!!v§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§1J§ && this.§6!s§ != b2internal::4!0)
         {
            _loc18_ = this.§3o§.x * (_loc6_.x - _loc4_.x) + this.§3o§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§+f§.Copy();
            _loc20_ = this.§]!Y§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§+f§.§6f§(_loc20_);
            if(this.§6!s§ == b2internal::,!?)
            {
               this.§+f§.z = b2Math.§5I§(this.§+f§.z,0);
            }
            else if(this.§6!s§ == b2internal::&!d)
            {
               this.§+f§.z = b2Math.§0"8§(this.§+f§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§+f§.z - _loc19_.z) * this.§]!Y§.col3.x;
            _loc22_ = -_loc13_ - (this.§+f§.z - _loc19_.z) * this.§]!Y§.col3.y;
            _loc23_ = this.§]!Y§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§+f§.x = _loc23_.x;
            this.§+f§.y = _loc23_.y;
            _loc20_.x = this.§+f§.x - _loc19_.x;
            _loc20_.y = this.§+f§.y - _loc19_.y;
            _loc20_.z = this.§+f§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§!!v§.x + _loc20_.z * this.§3o§.x;
            _loc9_ = _loc20_.x * this.§!!v§.y + _loc20_.z * this.§3o§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::1!- * _loc8_;
            _loc4_.y -= b2internal::1!- * _loc9_;
            _loc5_ -= b2internal::,!y * _loc10_;
            _loc6_.x += b2internal::#S * _loc8_;
            _loc6_.y += b2internal::#S * _loc9_;
            _loc7_ += b2internal::&A * _loc11_;
         }
         else
         {
            _loc24_ = this.§]!Y§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§+f§.x += _loc24_.x;
            this.§+f§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§!!v§.x;
            _loc9_ = _loc24_.x * this.§!!v§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::1!- * _loc8_;
            _loc4_.y -= b2internal::1!- * _loc9_;
            _loc5_ -= b2internal::,!y * _loc10_;
            _loc6_.x += b2internal::#S * _loc8_;
            _loc6_.y += b2internal::#S * _loc9_;
            _loc7_ += b2internal::&A * _loc11_;
         }
         _loc2_.§;B§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§;B§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::;l;
         var _loc5_:b2Body = b2internal::2z;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§0!!§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§0!!§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::?a.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::?a.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::%!f.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::%!f.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§1J§)
         {
            this.§3o§ = b2Math.§1F§(_loc20_,this.§ !>§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§3o§.y - (_loc27_ + _loc23_) * this.§3o§.x;
            this.m_a2 = _loc24_ * this.§3o§.y - _loc25_ * this.§3o§.x;
            _loc35_ = this.§3o§.x * _loc26_ + this.§3o§.y * _loc27_;
            if(b2Math.§-L§(this.§%!5§ - this.§[B§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§1!s§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§-L§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§[B§)
            {
               _loc19_ = b2Math.§1!s§(_loc35_ - this.§[B§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§[B§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§%!5§)
            {
               _loc19_ = b2Math.§1!s§(_loc35_ - this.§%!5§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§%!5§;
               _loc18_ = true;
            }
         }
         this.§!!v§ = b2Math.§1F§(_loc20_,this.§7!N§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§!!v§.y - (_loc27_ + _loc23_) * this.§!!v§.x;
         this.m_s2 = _loc24_ * this.§!!v§.y - _loc25_ * this.§!!v§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§!!v§.x * _loc26_ + this.§!!v§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§9!u§;
         _loc16_ = b2Math.§5I§(_loc16_,b2Math.§-L§(_loc29_));
         _loc17_ = b2Math.§-L§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::1!-;
            _loc13_ = b2internal::#S;
            _loc14_ = b2internal::,!y;
            _loc15_ = b2internal::&A;
            this.§]!Y§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§]!Y§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§]!Y§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§]!Y§.col2.x = this.§]!Y§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§]!Y§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§]!Y§.col2.y = 1;
            }
            this.§]!Y§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§]!Y§.col3.x = this.§]!Y§.col1.z;
            this.§]!Y§.col3.y = this.§]!Y§.col2.z;
            this.§]!Y§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§]!Y§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::1!-;
            _loc13_ = b2internal::#S;
            _loc14_ = b2internal::,!y;
            _loc15_ = b2internal::&A;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§]!Y§.col1.Set(_loc36_,_loc37_,0);
            this.§]!Y§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§]!Y§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§!!v§.x + _loc28_.z * this.§3o§.x;
         var _loc32_:Number = _loc28_.x * this.§!!v§.y + _loc28_.z * this.§3o§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::1!- * _loc31_;
         _loc6_.y -= b2internal::1!- * _loc32_;
         _loc7_ -= b2internal::,!y * _loc33_;
         _loc8_.x += b2internal::#S * _loc31_;
         _loc8_.y += b2internal::#S * _loc32_;
         _loc9_ += b2internal::&A * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§<!0§();
         _loc5_.§<!0§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
