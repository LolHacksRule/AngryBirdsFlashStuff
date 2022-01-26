package §6$§
{
   import §#!M§.b2Settings;
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2TimeStep;
   import §<!8§.b2Mat22;
   import §<!8§.b2Mat33;
   import §<!8§.b2Math;
   import §<!8§.b2Transform;
   import §<!8§.b2Vec2;
   import §<!8§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §3N§:b2Vec2;
      
      private var §8!§:b2Vec2;
      
      private var §4,§:Number;
      
      private var §`R§:b2Vec2;
      
      private var §8,§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §^!H§:b2Mat33;
      
      private var §7!P§:b2Vec3;
      
      private var §4!T§:Number;
      
      private var §"h§:Number;
      
      private var §[!S§:Number;
      
      private var §"!c§:Number;
      
      private var §>g§:Number;
      
      private var §^!R§:Number;
      
      private var §6Q§:Boolean;
      
      private var §`!&§:Boolean;
      
      private var §,!L§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§3N§ = new b2Vec2();
         this.§8!§ = new b2Vec2();
         this.§`R§ = new b2Vec2();
         this.§8,§ = new b2Vec2();
         this.§^!H§ = new b2Mat33();
         this.§7!P§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8!Z§);
         this.m_localAnchor2.SetV(param1.§]!P§);
         this.§3N§.SetV(param1.§>!Z§);
         this.§8!§.x = -this.§3N§.y;
         this.§8!§.y = this.§3N§.x;
         this.§4,§ = param1.§[1§;
         this.§7!P§.§`§();
         this.§4!T§ = 0;
         this.§"h§ = 0;
         this.§[!S§ = param1.§"!Y§;
         this.§"!c§ = param1.§[%§;
         this.§>g§ = param1.§15§;
         this.§^!R§ = param1.motorSpeed;
         this.§6Q§ = param1.§>C§;
         this.§`!&§ = param1.§+g§;
         this.§,!L§ = b2internal::]m;
         this.§`R§.§`§();
         this.§8,§.§`§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!I.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!#.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§7!P§.x * this.§8,§.x + (this.§"h§ + this.§7!P§.z) * this.§`R§.x),param1 * (this.§7!P§.x * this.§8,§.y + (this.§"h§ + this.§7!P§.z) * this.§`R§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§7!P§.y;
      }
      
      public function §"1§() : Number
      {
         var _loc1_:b2Body = b2internal::2!I;
         var _loc2_:b2Body = b2internal::%!#;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§=!]§(this.§3N§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §!!7§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!I;
         var _loc2_:b2Body = b2internal::%!#;
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
         var _loc15_:b2Vec2 = _loc1_.§=!]§(this.§3N§);
         var _loc16_:b2Vec2 = _loc1_.§3s§;
         var _loc17_:b2Vec2 = _loc2_.§3s§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §4M§() : Boolean
      {
         return this.§6Q§;
      }
      
      public function §>!V§(param1:Boolean) : void
      {
         b2internal::2!I.SetAwake(true);
         b2internal::%!#.SetAwake(true);
         this.§6Q§ = param1;
      }
      
      public function §"G§() : Number
      {
         return this.§[!S§;
      }
      
      public function §1S§() : Number
      {
         return this.§"!c§;
      }
      
      public function §#!T§(param1:Number, param2:Number) : void
      {
         b2internal::2!I.SetAwake(true);
         b2internal::%!#.SetAwake(true);
         this.§[!S§ = param1;
         this.§"!c§ = param2;
      }
      
      public function §%!Q§() : Boolean
      {
         return this.§`!&§;
      }
      
      public function §-!d§(param1:Boolean) : void
      {
         b2internal::2!I.SetAwake(true);
         b2internal::%!#.SetAwake(true);
         this.§`!&§ = param1;
      }
      
      public function §-!a§(param1:Number) : void
      {
         b2internal::2!I.SetAwake(true);
         b2internal::%!#.SetAwake(true);
         this.§^!R§ = param1;
      }
      
      public function § 1§() : Number
      {
         return this.§^!R§;
      }
      
      public function §[!A§(param1:Number) : void
      {
         b2internal::2!I.SetAwake(true);
         b2internal::%!#.SetAwake(true);
         this.§>g§ = param1;
      }
      
      public function §8O§() : Number
      {
         return this.§"h§;
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
         var _loc2_:b2Body = b2internal::2!I;
         var _loc3_:b2Body = b2internal::%!#;
         b2internal::5!W.SetV(_loc2_.§"!E§());
         b2internal::!!N.SetV(_loc3_.§"!E§());
         var _loc6_:b2Transform = _loc2_.§1!J§();
         var _loc7_:b2Transform = _loc3_.§1!J§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::5!W.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::5!W.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::!!N.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::!!N.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §9R§ = _loc2_.§0,§;
         §'o§ = _loc3_.§0,§;
         §%!K§ = _loc2_.§'!=§;
         §82§ = _loc3_.§'!=§;
         this.§`R§.SetV(b2Math.§5y§(_loc6_.R,this.§3N§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§`R§.y - (_loc13_ + _loc9_) * this.§`R§.x;
         this.m_a2 = _loc10_ * this.§`R§.y - _loc11_ * this.§`R§.x;
         this.§4!T§ = b2internal::9R + b2internal::'o + b2internal::%!K * this.m_a1 * this.m_a1 + b2internal::82 * this.m_a2 * this.m_a2;
         if(this.§4!T§ > Number.MIN_VALUE)
         {
            this.§4!T§ = 1 / this.§4!T§;
         }
         this.§8,§.SetV(b2Math.§5y§(_loc6_.R,this.§8!§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§8,§.y - (_loc13_ + _loc9_) * this.§8,§.x;
         this.m_s2 = _loc10_ * this.§8,§.y - _loc11_ * this.§8,§.x;
         var _loc14_:Number = b2internal::9R;
         var _loc15_:Number = b2internal::'o;
         var _loc16_:Number = b2internal::%!K;
         var _loc17_:Number = b2internal::82;
         this.§^!H§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§^!H§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§^!H§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§^!H§.col2.x = this.§^!H§.col1.y;
         this.§^!H§.col2.y = _loc16_ + _loc17_;
         this.§^!H§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§^!H§.col3.x = this.§^!H§.col1.z;
         this.§^!H§.col3.y = this.§^!H§.col2.z;
         this.§^!H§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§6Q§)
         {
            _loc18_ = this.§`R§.x * _loc12_ + this.§`R§.y * _loc13_;
            if(b2Math.§?!4§(this.§"!c§ - this.§[!S§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§,!L§ = b2internal::5!<;
            }
            else if(_loc18_ <= this.§[!S§)
            {
               if(this.§,!L§ != b2internal::``)
               {
                  this.§,!L§ = b2internal::``;
                  this.§7!P§.z = 0;
               }
            }
            else if(_loc18_ >= this.§"!c§)
            {
               if(this.§,!L§ != b2internal::=A)
               {
                  this.§,!L§ = b2internal::=A;
                  this.§7!P§.z = 0;
               }
            }
            else
            {
               this.§,!L§ = b2internal::]m;
               this.§7!P§.z = 0;
            }
         }
         else
         {
            this.§,!L§ = b2internal::]m;
         }
         if(this.§`!&§ == false)
         {
            this.§"h§ = 0;
         }
         if(param1.§9!3§)
         {
            this.§7!P§.x *= param1.§8!W§;
            this.§7!P§.y *= param1.§8!W§;
            this.§"h§ *= param1.§8!W§;
            _loc19_ = this.§7!P§.x * this.§8,§.x + (this.§"h§ + this.§7!P§.z) * this.§`R§.x;
            _loc20_ = this.§7!P§.x * this.§8,§.y + (this.§"h§ + this.§7!P§.z) * this.§`R§.y;
            _loc21_ = this.§7!P§.x * this.m_s1 + this.§7!P§.y + (this.§"h§ + this.§7!P§.z) * this.m_a1;
            _loc22_ = this.§7!P§.x * this.m_s2 + this.§7!P§.y + (this.§"h§ + this.§7!P§.z) * this.m_a2;
            _loc2_.§3s§.x -= b2internal::9R * _loc19_;
            _loc2_.§3s§.y -= b2internal::9R * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::%!K * _loc21_;
            _loc3_.§3s§.x += b2internal::'o * _loc19_;
            _loc3_.§3s§.y += b2internal::'o * _loc20_;
            _loc3_.m_angularVelocity += b2internal::82 * _loc22_;
         }
         else
         {
            this.§7!P§.§`§();
            this.§"h§ = 0;
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
         var _loc2_:b2Body = b2internal::2!I;
         var _loc3_:b2Body = b2internal::%!#;
         var _loc4_:b2Vec2 = _loc2_.§3s§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§3s§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§`!&§ && this.§,!L§ != b2internal::5!<)
         {
            _loc14_ = this.§`R§.x * (_loc6_.x - _loc4_.x) + this.§`R§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§4!T§ * (this.§^!R§ - _loc14_);
            _loc16_ = this.§"h§;
            _loc17_ = param1.§5!+§ * this.§>g§;
            this.§"h§ = b2Math.§>!M§(this.§"h§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§"h§ - _loc16_) * this.§`R§.x;
            _loc9_ = _loc15_ * this.§`R§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::9R * _loc8_;
            _loc4_.y -= b2internal::9R * _loc9_;
            _loc5_ -= b2internal::%!K * _loc10_;
            _loc6_.x += b2internal::'o * _loc8_;
            _loc6_.y += b2internal::'o * _loc9_;
            _loc7_ += b2internal::82 * _loc11_;
         }
         var _loc12_:Number = this.§8,§.x * (_loc6_.x - _loc4_.x) + this.§8,§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§6Q§ && this.§,!L§ != b2internal::]m)
         {
            _loc18_ = this.§`R§.x * (_loc6_.x - _loc4_.x) + this.§`R§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§7!P§.Copy();
            _loc20_ = this.§^!H§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§7!P§.§<W§(_loc20_);
            if(this.§,!L§ == b2internal::``)
            {
               this.§7!P§.z = b2Math.§0$§(this.§7!P§.z,0);
            }
            else if(this.§,!L§ == b2internal::=A)
            {
               this.§7!P§.z = b2Math.§]#§(this.§7!P§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§7!P§.z - _loc19_.z) * this.§^!H§.col3.x;
            _loc22_ = -_loc13_ - (this.§7!P§.z - _loc19_.z) * this.§^!H§.col3.y;
            _loc23_ = this.§^!H§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§7!P§.x = _loc23_.x;
            this.§7!P§.y = _loc23_.y;
            _loc20_.x = this.§7!P§.x - _loc19_.x;
            _loc20_.y = this.§7!P§.y - _loc19_.y;
            _loc20_.z = this.§7!P§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§8,§.x + _loc20_.z * this.§`R§.x;
            _loc9_ = _loc20_.x * this.§8,§.y + _loc20_.z * this.§`R§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::9R * _loc8_;
            _loc4_.y -= b2internal::9R * _loc9_;
            _loc5_ -= b2internal::%!K * _loc10_;
            _loc6_.x += b2internal::'o * _loc8_;
            _loc6_.y += b2internal::'o * _loc9_;
            _loc7_ += b2internal::82 * _loc11_;
         }
         else
         {
            _loc24_ = this.§^!H§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§7!P§.x += _loc24_.x;
            this.§7!P§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§8,§.x;
            _loc9_ = _loc24_.x * this.§8,§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::9R * _loc8_;
            _loc4_.y -= b2internal::9R * _loc9_;
            _loc5_ -= b2internal::%!K * _loc10_;
            _loc6_.x += b2internal::'o * _loc8_;
            _loc6_.y += b2internal::'o * _loc9_;
            _loc7_ += b2internal::82 * _loc11_;
         }
         _loc2_.§3s§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§3s§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::2!I;
         var _loc5_:b2Body = b2internal::%!#;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§6!"§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§6!"§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::5!W.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::5!W.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::!!N.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::!!N.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§6Q§)
         {
            this.§`R§ = b2Math.§5y§(_loc20_,this.§3N§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§`R§.y - (_loc27_ + _loc23_) * this.§`R§.x;
            this.m_a2 = _loc24_ * this.§`R§.y - _loc25_ * this.§`R§.x;
            _loc35_ = this.§`R§.x * _loc26_ + this.§`R§.y * _loc27_;
            if(b2Math.§?!4§(this.§"!c§ - this.§[!S§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§>!M§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§?!4§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§[!S§)
            {
               _loc19_ = b2Math.§>!M§(_loc35_ - this.§[!S§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§[!S§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§"!c§)
            {
               _loc19_ = b2Math.§>!M§(_loc35_ - this.§"!c§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§"!c§;
               _loc18_ = true;
            }
         }
         this.§8,§ = b2Math.§5y§(_loc20_,this.§8!§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§8,§.y - (_loc27_ + _loc23_) * this.§8,§.x;
         this.m_s2 = _loc24_ * this.§8,§.y - _loc25_ * this.§8,§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§8,§.x * _loc26_ + this.§8,§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§4,§;
         _loc16_ = b2Math.§0$§(_loc16_,b2Math.§?!4§(_loc29_));
         _loc17_ = b2Math.§?!4§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::9R;
            _loc13_ = b2internal::'o;
            _loc14_ = b2internal::%!K;
            _loc15_ = b2internal::82;
            this.§^!H§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§^!H§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§^!H§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§^!H§.col2.x = this.§^!H§.col1.y;
            this.§^!H§.col2.y = _loc14_ + _loc15_;
            this.§^!H§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§^!H§.col3.x = this.§^!H§.col1.z;
            this.§^!H§.col3.y = this.§^!H§.col2.z;
            this.§^!H§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§^!H§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::9R;
            _loc13_ = b2internal::'o;
            _loc14_ = b2internal::%!K;
            _loc15_ = b2internal::82;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§^!H§.col1.Set(_loc36_,_loc37_,0);
            this.§^!H§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§^!H§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§8,§.x + _loc28_.z * this.§`R§.x;
         var _loc32_:Number = _loc28_.x * this.§8,§.y + _loc28_.z * this.§`R§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::9R * _loc31_;
         _loc6_.y -= b2internal::9R * _loc32_;
         _loc7_ -= b2internal::%!K * _loc33_;
         _loc8_.x += b2internal::'o * _loc31_;
         _loc8_.y += b2internal::'o * _loc32_;
         _loc9_ += b2internal::82 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§4!O§();
         _loc5_.§4!O§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
