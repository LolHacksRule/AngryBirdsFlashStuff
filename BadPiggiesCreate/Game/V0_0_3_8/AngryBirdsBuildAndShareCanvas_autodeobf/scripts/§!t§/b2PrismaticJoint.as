package §!t§
{
   import §8,§.b2Settings;
   import §8,§.b2internal;
   import §9v§.b2Mat22;
   import §9v§.b2Mat33;
   import §9v§.b2Math;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   import §9v§.b2Vec3;
   import §?!E§.b2Body;
   import §?!E§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §;!J§:b2Vec2;
      
      private var §'l§:b2Vec2;
      
      private var §@g§:Number;
      
      private var §-N§:b2Vec2;
      
      private var §>!L§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §`1§:b2Mat33;
      
      private var §8j§:b2Vec3;
      
      private var §'!§:Number;
      
      private var §<!l§:Number;
      
      private var §?J§:Number;
      
      private var §^]§:Number;
      
      private var §'y§:Number;
      
      private var §<"1§:Number;
      
      private var §9!C§:Boolean;
      
      private var §;Y§:Boolean;
      
      private var §3K§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§;!J§ = new b2Vec2();
         this.§'l§ = new b2Vec2();
         this.§-N§ = new b2Vec2();
         this.§>!L§ = new b2Vec2();
         this.§`1§ = new b2Mat33();
         this.§8j§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ ;§);
         this.m_localAnchor2.SetV(param1.§8!Z§);
         this.§;!J§.SetV(param1.§=!i§);
         this.§'l§.x = -this.§;!J§.y;
         this.§'l§.y = this.§;!J§.x;
         this.§@g§ = param1.§#!8§;
         this.§8j§.§6V§();
         this.§'!§ = 0;
         this.§<!l§ = 0;
         this.§?J§ = param1.§'m§;
         this.§^]§ = param1.§#!7§;
         this.§'y§ = param1.§@!#§;
         this.§<"1§ = param1.motorSpeed;
         this.§9!C§ = param1.§+!6§;
         this.§;Y§ = param1.§-! §;
         this.§3K§ = b2internal:: G;
         this.§-N§.§6V§();
         this.§>!L§.§6V§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::7-.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]5.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§8j§.x * this.§>!L§.x + (this.§<!l§ + this.§8j§.z) * this.§-N§.x),param1 * (this.§8j§.x * this.§>!L§.y + (this.§<!l§ + this.§8j§.z) * this.§-N§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8j§.y;
      }
      
      public function §<!S§() : Number
      {
         var _loc1_:b2Body = b2internal::7-;
         var _loc2_:b2Body = b2internal::]5;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§-e§(this.§;!J§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §3!,§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::7-;
         var _loc2_:b2Body = b2internal::]5;
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
         var _loc15_:b2Vec2 = _loc1_.§-e§(this.§;!J§);
         var _loc16_:b2Vec2 = _loc1_.§?!%§;
         var _loc17_:b2Vec2 = _loc2_.§?!%§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §7!6§() : Boolean
      {
         return this.§9!C§;
      }
      
      public function §!!h§(param1:Boolean) : void
      {
         b2internal::7-.SetAwake(true);
         b2internal::]5.SetAwake(true);
         this.§9!C§ = param1;
      }
      
      public function §,!B§() : Number
      {
         return this.§?J§;
      }
      
      public function §'!#§() : Number
      {
         return this.§^]§;
      }
      
      public function §'"&§(param1:Number, param2:Number) : void
      {
         b2internal::7-.SetAwake(true);
         b2internal::]5.SetAwake(true);
         this.§?J§ = param1;
         this.§^]§ = param2;
      }
      
      public function §-!L§() : Boolean
      {
         return this.§;Y§;
      }
      
      public function §^k§(param1:Boolean) : void
      {
         b2internal::7-.SetAwake(true);
         b2internal::]5.SetAwake(true);
         this.§;Y§ = param1;
      }
      
      public function §1!`§(param1:Number) : void
      {
         b2internal::7-.SetAwake(true);
         b2internal::]5.SetAwake(true);
         this.§<"1§ = param1;
      }
      
      public function §'Y§() : Number
      {
         return this.§<"1§;
      }
      
      public function §[!i§(param1:Number) : void
      {
         b2internal::7-.SetAwake(true);
         b2internal::]5.SetAwake(true);
         this.§'y§ = param1;
      }
      
      public function §3!O§() : Number
      {
         return this.§<!l§;
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
         var _loc2_:b2Body = b2internal::7-;
         var _loc3_:b2Body = b2internal::]5;
         b2internal:: !9.SetV(_loc2_.§[!&§());
         b2internal::2!!.SetV(_loc3_.§[!&§());
         var _loc6_:b2Transform = _loc2_.§@w§();
         var _loc7_:b2Transform = _loc3_.§@w§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal:: !9.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal:: !9.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::2!!.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::2!!.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §9"+§ = _loc2_.§-!P§;
         §`!I§ = _loc3_.§-!P§;
         §6!N§ = _loc2_.§;c§;
         §3t§ = _loc3_.§;c§;
         this.§-N§.SetV(b2Math.§2!U§(_loc6_.R,this.§;!J§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§-N§.y - (_loc13_ + _loc9_) * this.§-N§.x;
         this.m_a2 = _loc10_ * this.§-N§.y - _loc11_ * this.§-N§.x;
         this.§'!§ = b2internal::9"+ + b2internal::`!I + b2internal::6!N * this.m_a1 * this.m_a1 + b2internal::3t * this.m_a2 * this.m_a2;
         if(this.§'!§ > Number.MIN_VALUE)
         {
            this.§'!§ = 1 / this.§'!§;
         }
         this.§>!L§.SetV(b2Math.§2!U§(_loc6_.R,this.§'l§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§>!L§.y - (_loc13_ + _loc9_) * this.§>!L§.x;
         this.m_s2 = _loc10_ * this.§>!L§.y - _loc11_ * this.§>!L§.x;
         var _loc14_:Number = b2internal::9"+;
         var _loc15_:Number = b2internal::`!I;
         var _loc16_:Number = b2internal::6!N;
         var _loc17_:Number = b2internal::3t;
         this.§`1§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§`1§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§`1§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§`1§.col2.x = this.§`1§.col1.y;
         this.§`1§.col2.y = _loc16_ + _loc17_;
         this.§`1§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§`1§.col3.x = this.§`1§.col1.z;
         this.§`1§.col3.y = this.§`1§.col2.z;
         this.§`1§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§9!C§)
         {
            _loc18_ = this.§-N§.x * _loc12_ + this.§-N§.y * _loc13_;
            if(b2Math.§?!Y§(this.§^]§ - this.§?J§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§3K§ = b2internal::"v;
            }
            else if(_loc18_ <= this.§?J§)
            {
               if(this.§3K§ != b2internal::&"3)
               {
                  this.§3K§ = b2internal::&"3;
                  this.§8j§.z = 0;
               }
            }
            else if(_loc18_ >= this.§^]§)
            {
               if(this.§3K§ != b2internal::]!c)
               {
                  this.§3K§ = b2internal::]!c;
                  this.§8j§.z = 0;
               }
            }
            else
            {
               this.§3K§ = b2internal:: G;
               this.§8j§.z = 0;
            }
         }
         else
         {
            this.§3K§ = b2internal:: G;
         }
         if(this.§;Y§ == false)
         {
            this.§<!l§ = 0;
         }
         if(param1.§&9§)
         {
            this.§8j§.x *= param1.§4!1§;
            this.§8j§.y *= param1.§4!1§;
            this.§<!l§ *= param1.§4!1§;
            _loc19_ = this.§8j§.x * this.§>!L§.x + (this.§<!l§ + this.§8j§.z) * this.§-N§.x;
            _loc20_ = this.§8j§.x * this.§>!L§.y + (this.§<!l§ + this.§8j§.z) * this.§-N§.y;
            _loc21_ = this.§8j§.x * this.m_s1 + this.§8j§.y + (this.§<!l§ + this.§8j§.z) * this.m_a1;
            _loc22_ = this.§8j§.x * this.m_s2 + this.§8j§.y + (this.§<!l§ + this.§8j§.z) * this.m_a2;
            _loc2_.§?!%§.x -= b2internal::9"+ * _loc19_;
            _loc2_.§?!%§.y -= b2internal::9"+ * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::6!N * _loc21_;
            _loc3_.§?!%§.x += b2internal::`!I * _loc19_;
            _loc3_.§?!%§.y += b2internal::`!I * _loc20_;
            _loc3_.m_angularVelocity += b2internal::3t * _loc22_;
         }
         else
         {
            this.§8j§.§6V§();
            this.§<!l§ = 0;
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
         var _loc2_:b2Body = b2internal::7-;
         var _loc3_:b2Body = b2internal::]5;
         var _loc4_:b2Vec2 = _loc2_.§?!%§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§?!%§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§;Y§ && this.§3K§ != b2internal::"v)
         {
            _loc14_ = this.§-N§.x * (_loc6_.x - _loc4_.x) + this.§-N§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§'!§ * (this.§<"1§ - _loc14_);
            _loc16_ = this.§<!l§;
            _loc17_ = param1.§,!i§ * this.§'y§;
            this.§<!l§ = b2Math.§"A§(this.§<!l§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§<!l§ - _loc16_) * this.§-N§.x;
            _loc9_ = _loc15_ * this.§-N§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::9"+ * _loc8_;
            _loc4_.y -= b2internal::9"+ * _loc9_;
            _loc5_ -= b2internal::6!N * _loc10_;
            _loc6_.x += b2internal::`!I * _loc8_;
            _loc6_.y += b2internal::`!I * _loc9_;
            _loc7_ += b2internal::3t * _loc11_;
         }
         var _loc12_:Number = this.§>!L§.x * (_loc6_.x - _loc4_.x) + this.§>!L§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§9!C§ && this.§3K§ != b2internal:: G)
         {
            _loc18_ = this.§-N§.x * (_loc6_.x - _loc4_.x) + this.§-N§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§8j§.Copy();
            _loc20_ = this.§`1§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§8j§.native(_loc20_);
            if(this.§3K§ == b2internal::&"3)
            {
               this.§8j§.z = b2Math.§%!N§(this.§8j§.z,0);
            }
            else if(this.§3K§ == b2internal::]!c)
            {
               this.§8j§.z = b2Math.§,n§(this.§8j§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§8j§.z - _loc19_.z) * this.§`1§.col3.x;
            _loc22_ = -_loc13_ - (this.§8j§.z - _loc19_.z) * this.§`1§.col3.y;
            _loc23_ = this.§`1§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§8j§.x = _loc23_.x;
            this.§8j§.y = _loc23_.y;
            _loc20_.x = this.§8j§.x - _loc19_.x;
            _loc20_.y = this.§8j§.y - _loc19_.y;
            _loc20_.z = this.§8j§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§>!L§.x + _loc20_.z * this.§-N§.x;
            _loc9_ = _loc20_.x * this.§>!L§.y + _loc20_.z * this.§-N§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::9"+ * _loc8_;
            _loc4_.y -= b2internal::9"+ * _loc9_;
            _loc5_ -= b2internal::6!N * _loc10_;
            _loc6_.x += b2internal::`!I * _loc8_;
            _loc6_.y += b2internal::`!I * _loc9_;
            _loc7_ += b2internal::3t * _loc11_;
         }
         else
         {
            _loc24_ = this.§`1§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§8j§.x += _loc24_.x;
            this.§8j§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§>!L§.x;
            _loc9_ = _loc24_.x * this.§>!L§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::9"+ * _loc8_;
            _loc4_.y -= b2internal::9"+ * _loc9_;
            _loc5_ -= b2internal::6!N * _loc10_;
            _loc6_.x += b2internal::`!I * _loc8_;
            _loc6_.y += b2internal::`!I * _loc9_;
            _loc7_ += b2internal::3t * _loc11_;
         }
         _loc2_.§?!%§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§?!%§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::7-;
         var _loc5_:b2Body = b2internal::]5;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§@N§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§@N§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal:: !9.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal:: !9.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::2!!.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::2!!.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§9!C§)
         {
            this.§-N§ = b2Math.§2!U§(_loc20_,this.§;!J§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§-N§.y - (_loc27_ + _loc23_) * this.§-N§.x;
            this.m_a2 = _loc24_ * this.§-N§.y - _loc25_ * this.§-N§.x;
            _loc35_ = this.§-N§.x * _loc26_ + this.§-N§.y * _loc27_;
            if(b2Math.§?!Y§(this.§^]§ - this.§?J§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§"A§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§?!Y§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§?J§)
            {
               _loc19_ = b2Math.§"A§(_loc35_ - this.§?J§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§?J§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§^]§)
            {
               _loc19_ = b2Math.§"A§(_loc35_ - this.§^]§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§^]§;
               _loc18_ = true;
            }
         }
         this.§>!L§ = b2Math.§2!U§(_loc20_,this.§'l§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§>!L§.y - (_loc27_ + _loc23_) * this.§>!L§.x;
         this.m_s2 = _loc24_ * this.§>!L§.y - _loc25_ * this.§>!L§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§>!L§.x * _loc26_ + this.§>!L§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§@g§;
         _loc16_ = b2Math.§%!N§(_loc16_,b2Math.§?!Y§(_loc29_));
         _loc17_ = b2Math.§?!Y§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::9"+;
            _loc13_ = b2internal::`!I;
            _loc14_ = b2internal::6!N;
            _loc15_ = b2internal::3t;
            this.§`1§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§`1§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§`1§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§`1§.col2.x = this.§`1§.col1.y;
            this.§`1§.col2.y = _loc14_ + _loc15_;
            this.§`1§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§`1§.col3.x = this.§`1§.col1.z;
            this.§`1§.col3.y = this.§`1§.col2.z;
            this.§`1§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§`1§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::9"+;
            _loc13_ = b2internal::`!I;
            _loc14_ = b2internal::6!N;
            _loc15_ = b2internal::3t;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§`1§.col1.Set(_loc36_,_loc37_,0);
            this.§`1§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§`1§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§>!L§.x + _loc28_.z * this.§-N§.x;
         var _loc32_:Number = _loc28_.x * this.§>!L§.y + _loc28_.z * this.§-N§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::9"+ * _loc31_;
         _loc6_.y -= b2internal::9"+ * _loc32_;
         _loc7_ -= b2internal::6!N * _loc33_;
         _loc8_.x += b2internal::`!I * _loc31_;
         _loc8_.y += b2internal::`!I * _loc32_;
         _loc9_ += b2internal::3t * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§]!k§();
         _loc5_.§]!k§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
