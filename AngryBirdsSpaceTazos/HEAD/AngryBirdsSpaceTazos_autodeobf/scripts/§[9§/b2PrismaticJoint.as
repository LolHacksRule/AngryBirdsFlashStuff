package §[9§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §6!n§.b2Mat22;
   import §6!n§.b2Mat33;
   import §6!n§.b2Math;
   import §6!n§.b2Transform;
   import §6!n§.b2Vec2;
   import §6!n§.b2Vec3;
   import §9!K§.b2Body;
   import §9!K§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §2!t§:b2Vec2;
      
      private var §4!X§:b2Vec2;
      
      private var §`!s§:Number;
      
      private var §"^§:b2Vec2;
      
      private var §<!^§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §9]§:b2Mat33;
      
      private var §^i§:b2Vec3;
      
      private var §]c§:Number;
      
      private var §9,§:Number;
      
      private var §=!u§:Number;
      
      private var §=q§:Number;
      
      private var §[!l§:Number;
      
      private var §2!q§:Number;
      
      private var §]!D§:Boolean;
      
      private var §3"-§:Boolean;
      
      private var §`R§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§2!t§ = new b2Vec2();
         this.§4!X§ = new b2Vec2();
         this.§"^§ = new b2Vec2();
         this.§<!^§ = new b2Vec2();
         this.§9]§ = new b2Mat33();
         this.§^i§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8U§);
         this.m_localAnchor2.SetV(param1.§#i§);
         this.§2!t§.SetV(param1.§6!<§);
         this.§4!X§.x = -this.§2!t§.y;
         this.§4!X§.y = this.§2!t§.x;
         this.§`!s§ = param1.§%"E§;
         this.§^i§.§58§();
         this.§]c§ = 0;
         this.§9,§ = 0;
         this.§=!u§ = param1.§;+§;
         this.§=q§ = param1.§<![§;
         this.§[!l§ = param1.§[""§;
         this.§2!q§ = param1.motorSpeed;
         this.§]!D§ = param1.§#!Q§;
         this.§3"-§ = param1.§`!3§;
         this.§`R§ = b2internal::?!k;
         this.§"^§.§58§();
         this.§<!^§.§58§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!Q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§^i§.x * this.§<!^§.x + (this.§9,§ + this.§^i§.z) * this.§"^§.x),param1 * (this.§^i§.x * this.§<!^§.y + (this.§9,§ + this.§^i§.z) * this.§"^§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^i§.y;
      }
      
      public function §78§() : Number
      {
         var _loc1_:b2Body = b2internal::[F;
         var _loc2_:b2Body = b2internal::,!Q;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§'";§(this.§2!t§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §3!X§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::[F;
         var _loc2_:b2Body = b2internal::,!Q;
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
         var _loc15_:b2Vec2 = _loc1_.§'";§(this.§2!t§);
         var _loc16_:b2Vec2 = _loc1_.§9e§;
         var _loc17_:b2Vec2 = _loc2_.§9e§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §7"0§() : Boolean
      {
         return this.§]!D§;
      }
      
      public function §4!_§(param1:Boolean) : void
      {
         b2internal::[F.SetAwake(true);
         b2internal::,!Q.SetAwake(true);
         this.§]!D§ = param1;
      }
      
      public function §5"+§() : Number
      {
         return this.§=!u§;
      }
      
      public function §5!H§() : Number
      {
         return this.§=q§;
      }
      
      public function §>I§(param1:Number, param2:Number) : void
      {
         b2internal::[F.SetAwake(true);
         b2internal::,!Q.SetAwake(true);
         this.§=!u§ = param1;
         this.§=q§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§3"-§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::[F.SetAwake(true);
         b2internal::,!Q.SetAwake(true);
         this.§3"-§ = param1;
      }
      
      public function §1"#§(param1:Number) : void
      {
         b2internal::[F.SetAwake(true);
         b2internal::,!Q.SetAwake(true);
         this.§2!q§ = param1;
      }
      
      public function §?!7§() : Number
      {
         return this.§2!q§;
      }
      
      public function §!1§(param1:Number) : void
      {
         b2internal::[F.SetAwake(true);
         b2internal::,!Q.SetAwake(true);
         this.§[!l§ = param1;
      }
      
      public function §%3§() : Number
      {
         return this.§9,§;
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
         var _loc2_:b2Body = b2internal::[F;
         var _loc3_:b2Body = b2internal::,!Q;
         b2internal::%" .SetV(_loc2_.§!"!§());
         b2internal::6"D.SetV(_loc3_.§!"!§());
         var _loc6_:b2Transform = _loc2_.§]!>§();
         var _loc7_:b2Transform = _loc3_.§]!>§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::%" .x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::%" .y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::6"D.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::6"D.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §1^§ = _loc2_.§var §;
         § !A§ = _loc3_.§var §;
         §-^§ = _loc2_.§,"!§;
         §&"7§ = _loc3_.§,"!§;
         this.§"^§.SetV(b2Math.§;!q§(_loc6_.R,this.§2!t§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§"^§.y - (_loc13_ + _loc9_) * this.§"^§.x;
         this.m_a2 = _loc10_ * this.§"^§.y - _loc11_ * this.§"^§.x;
         this.§]c§ = b2internal::1^ + b2internal:: !A + b2internal::-^ * this.m_a1 * this.m_a1 + b2internal::&"7 * this.m_a2 * this.m_a2;
         if(this.§]c§ > Number.MIN_VALUE)
         {
            this.§]c§ = 1 / this.§]c§;
         }
         this.§<!^§.SetV(b2Math.§;!q§(_loc6_.R,this.§4!X§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§<!^§.y - (_loc13_ + _loc9_) * this.§<!^§.x;
         this.m_s2 = _loc10_ * this.§<!^§.y - _loc11_ * this.§<!^§.x;
         var _loc14_:Number = b2internal::1^;
         var _loc15_:Number = b2internal:: !A;
         var _loc16_:Number = b2internal::-^;
         var _loc17_:Number = b2internal::&"7;
         this.§9]§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§9]§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§9]§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§9]§.col2.x = this.§9]§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§9]§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§9]§.col2.y = 1;
         }
         this.§9]§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§9]§.col3.x = this.§9]§.col1.z;
         this.§9]§.col3.y = this.§9]§.col2.z;
         this.§9]§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§]!D§)
         {
            _loc18_ = this.§"^§.x * _loc12_ + this.§"^§.y * _loc13_;
            if(b2Math.§<W§(this.§=q§ - this.§=!u§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§`R§ = b2internal::^!K;
            }
            else if(_loc18_ <= this.§=!u§)
            {
               if(this.§`R§ != b2internal::#!j)
               {
                  this.§`R§ = b2internal::#!j;
                  this.§^i§.z = 0;
               }
            }
            else if(_loc18_ >= this.§=q§)
            {
               if(this.§`R§ != b2internal::2J)
               {
                  this.§`R§ = b2internal::2J;
                  this.§^i§.z = 0;
               }
            }
            else
            {
               this.§`R§ = b2internal::?!k;
               this.§^i§.z = 0;
            }
         }
         else
         {
            this.§`R§ = b2internal::?!k;
            this.§^i§.z = 0;
         }
         if(this.§3"-§ == false)
         {
            this.§9,§ = 0;
         }
         if(param1.§'!t§)
         {
            this.§^i§.x *= param1.§?!$§;
            this.§^i§.y *= param1.§?!$§;
            this.§9,§ *= param1.§?!$§;
            _loc19_ = this.§^i§.x * this.§<!^§.x + (this.§9,§ + this.§^i§.z) * this.§"^§.x;
            _loc20_ = this.§^i§.x * this.§<!^§.y + (this.§9,§ + this.§^i§.z) * this.§"^§.y;
            _loc21_ = this.§^i§.x * this.m_s1 + this.§^i§.y + (this.§9,§ + this.§^i§.z) * this.m_a1;
            _loc22_ = this.§^i§.x * this.m_s2 + this.§^i§.y + (this.§9,§ + this.§^i§.z) * this.m_a2;
            _loc2_.§9e§.x -= b2internal::1^ * _loc19_;
            _loc2_.§9e§.y -= b2internal::1^ * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::-^ * _loc21_;
            _loc3_.§9e§.x += b2internal:: !A * _loc19_;
            _loc3_.§9e§.y += b2internal:: !A * _loc20_;
            _loc3_.m_angularVelocity += b2internal::&"7 * _loc22_;
         }
         else
         {
            this.§^i§.§58§();
            this.§9,§ = 0;
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
         var _loc2_:b2Body = b2internal::[F;
         var _loc3_:b2Body = b2internal::,!Q;
         var _loc4_:b2Vec2 = _loc2_.§9e§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§9e§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§3"-§ && this.§`R§ != b2internal::^!K)
         {
            _loc14_ = this.§"^§.x * (_loc6_.x - _loc4_.x) + this.§"^§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§]c§ * (this.§2!q§ - _loc14_);
            _loc16_ = this.§9,§;
            _loc17_ = param1.§;@§ * this.§[!l§;
            this.§9,§ = b2Math.§5!^§(this.§9,§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§9,§ - _loc16_) * this.§"^§.x;
            _loc9_ = _loc15_ * this.§"^§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::1^ * _loc8_;
            _loc4_.y -= b2internal::1^ * _loc9_;
            _loc5_ -= b2internal::-^ * _loc10_;
            _loc6_.x += b2internal:: !A * _loc8_;
            _loc6_.y += b2internal:: !A * _loc9_;
            _loc7_ += b2internal::&"7 * _loc11_;
         }
         var _loc12_:Number = this.§<!^§.x * (_loc6_.x - _loc4_.x) + this.§<!^§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§]!D§ && this.§`R§ != b2internal::?!k)
         {
            _loc18_ = this.§"^§.x * (_loc6_.x - _loc4_.x) + this.§"^§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§^i§.Copy();
            _loc20_ = this.§9]§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§^i§.§=4§(_loc20_);
            if(this.§`R§ == b2internal::#!j)
            {
               this.§^i§.z = b2Math.§0"C§(this.§^i§.z,0);
            }
            else if(this.§`R§ == b2internal::2J)
            {
               this.§^i§.z = b2Math.§#!t§(this.§^i§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§^i§.z - _loc19_.z) * this.§9]§.col3.x;
            _loc22_ = -_loc13_ - (this.§^i§.z - _loc19_.z) * this.§9]§.col3.y;
            _loc23_ = this.§9]§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§^i§.x = _loc23_.x;
            this.§^i§.y = _loc23_.y;
            _loc20_.x = this.§^i§.x - _loc19_.x;
            _loc20_.y = this.§^i§.y - _loc19_.y;
            _loc20_.z = this.§^i§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§<!^§.x + _loc20_.z * this.§"^§.x;
            _loc9_ = _loc20_.x * this.§<!^§.y + _loc20_.z * this.§"^§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::1^ * _loc8_;
            _loc4_.y -= b2internal::1^ * _loc9_;
            _loc5_ -= b2internal::-^ * _loc10_;
            _loc6_.x += b2internal:: !A * _loc8_;
            _loc6_.y += b2internal:: !A * _loc9_;
            _loc7_ += b2internal::&"7 * _loc11_;
         }
         else
         {
            _loc24_ = this.§9]§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§^i§.x += _loc24_.x;
            this.§^i§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§<!^§.x;
            _loc9_ = _loc24_.x * this.§<!^§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::1^ * _loc8_;
            _loc4_.y -= b2internal::1^ * _loc9_;
            _loc5_ -= b2internal::-^ * _loc10_;
            _loc6_.x += b2internal:: !A * _loc8_;
            _loc6_.y += b2internal:: !A * _loc9_;
            _loc7_ += b2internal::&"7 * _loc11_;
         }
         _loc2_.§9e§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§9e§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::[F;
         var _loc5_:b2Body = b2internal::,!Q;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§9" §(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§9" §(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::%" .x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::%" .y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::6"D.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::6"D.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§]!D§)
         {
            this.§"^§ = b2Math.§;!q§(_loc20_,this.§2!t§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§"^§.y - (_loc27_ + _loc23_) * this.§"^§.x;
            this.m_a2 = _loc24_ * this.§"^§.y - _loc25_ * this.§"^§.x;
            _loc35_ = this.§"^§.x * _loc26_ + this.§"^§.y * _loc27_;
            if(b2Math.§<W§(this.§=q§ - this.§=!u§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§5!^§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§<W§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§=!u§)
            {
               _loc19_ = b2Math.§5!^§(_loc35_ - this.§=!u§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§=!u§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§=q§)
            {
               _loc19_ = b2Math.§5!^§(_loc35_ - this.§=q§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§=q§;
               _loc18_ = true;
            }
         }
         this.§<!^§ = b2Math.§;!q§(_loc20_,this.§4!X§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§<!^§.y - (_loc27_ + _loc23_) * this.§<!^§.x;
         this.m_s2 = _loc24_ * this.§<!^§.y - _loc25_ * this.§<!^§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§<!^§.x * _loc26_ + this.§<!^§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§`!s§;
         _loc16_ = b2Math.§0"C§(_loc16_,b2Math.§<W§(_loc29_));
         _loc17_ = b2Math.§<W§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::1^;
            _loc13_ = b2internal:: !A;
            _loc14_ = b2internal::-^;
            _loc15_ = b2internal::&"7;
            this.§9]§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§9]§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§9]§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§9]§.col2.x = this.§9]§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§9]§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§9]§.col2.y = 1;
            }
            this.§9]§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§9]§.col3.x = this.§9]§.col1.z;
            this.§9]§.col3.y = this.§9]§.col2.z;
            this.§9]§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§9]§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::1^;
            _loc13_ = b2internal:: !A;
            _loc14_ = b2internal::-^;
            _loc15_ = b2internal::&"7;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§9]§.col1.Set(_loc36_,_loc37_,0);
            this.§9]§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§9]§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§<!^§.x + _loc28_.z * this.§"^§.x;
         var _loc32_:Number = _loc28_.x * this.§<!^§.y + _loc28_.z * this.§"^§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::1^ * _loc31_;
         _loc6_.y -= b2internal::1^ * _loc32_;
         _loc7_ -= b2internal::-^ * _loc33_;
         _loc8_.x += b2internal:: !A * _loc31_;
         _loc8_.y += b2internal:: !A * _loc32_;
         _loc9_ += b2internal::&"7 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§>!b§();
         _loc5_.§>!b§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
