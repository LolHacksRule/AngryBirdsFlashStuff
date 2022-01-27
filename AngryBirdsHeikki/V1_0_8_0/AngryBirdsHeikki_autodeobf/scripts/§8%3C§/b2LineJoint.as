package §8<§
{
   import §0!=§.b2Mat22;
   import §0!=§.b2Math;
   import §0!=§.b2Transform;
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0!?§.b2TimeStep;
   import §0^§.b2Settings;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §%T§:b2Vec2;
      
      private var §0!X§:b2Vec2;
      
      private var §]F§:b2Vec2;
      
      private var §'7§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §-U§:b2Mat22;
      
      private var §0$§:b2Vec2;
      
      private var §%U§:Number;
      
      private var §case §:Number;
      
      private var §3g§:Number;
      
      private var §5k§:Number;
      
      private var §+K§:Number;
      
      private var §5A§:Number;
      
      private var §=!C§:Boolean;
      
      private var §7^§:Boolean;
      
      private var §!!7§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§%T§ = new b2Vec2();
         this.§0!X§ = new b2Vec2();
         this.§]F§ = new b2Vec2();
         this.§'7§ = new b2Vec2();
         this.§-U§ = new b2Mat22();
         this.§0$§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§@!T§);
         this.m_localAnchor2.SetV(param1.§,!;§);
         this.§%T§.SetV(param1.§;!-§);
         this.§0!X§.x = -this.§%T§.y;
         this.§0!X§.y = this.§%T§.x;
         this.§0$§.§0'§();
         this.§%U§ = 0;
         this.§case § = 0;
         this.§3g§ = param1.§#!W§;
         this.§5k§ = param1.§`X§;
         this.§+K§ = param1.§^x§;
         this.§5A§ = param1.motorSpeed;
         this.§=!C§ = param1.§`!c§;
         this.§7^§ = param1.§%s§;
         this.§!!7§ = b2internal::5s;
         this.§]F§.§0'§();
         this.§'7§.§0'§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::?2.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!N.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§0$§.x * this.§'7§.x + (this.§case § + this.§0$§.y) * this.§]F§.x),param1 * (this.§0$§.x * this.§'7§.y + (this.§case § + this.§0$§.y) * this.§]F§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0$§.y;
      }
      
      public function §4!=§() : Number
      {
         var _loc1_:b2Body = b2internal::?2;
         var _loc2_:b2Body = b2internal::!N;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§[@§(this.§%T§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §7Z§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::?2;
         var _loc2_:b2Body = b2internal::!N;
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
         var _loc15_:b2Vec2 = _loc1_.§[@§(this.§%T§);
         var _loc16_:b2Vec2 = _loc1_.§#P§;
         var _loc17_:b2Vec2 = _loc2_.§#P§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §2!]§() : Boolean
      {
         return this.§=!C§;
      }
      
      public function §+F§(param1:Boolean) : void
      {
         b2internal::?2.SetAwake(true);
         b2internal::!N.SetAwake(true);
         this.§=!C§ = param1;
      }
      
      public function §1!&§() : Number
      {
         return this.§3g§;
      }
      
      public function §[4§() : Number
      {
         return this.§5k§;
      }
      
      public function §>o§(param1:Number, param2:Number) : void
      {
         b2internal::?2.SetAwake(true);
         b2internal::!N.SetAwake(true);
         this.§3g§ = param1;
         this.§5k§ = param2;
      }
      
      public function §0!S§() : Boolean
      {
         return this.§7^§;
      }
      
      public function §,!J§(param1:Boolean) : void
      {
         b2internal::?2.SetAwake(true);
         b2internal::!N.SetAwake(true);
         this.§7^§ = param1;
      }
      
      public function §#!;§(param1:Number) : void
      {
         b2internal::?2.SetAwake(true);
         b2internal::!N.SetAwake(true);
         this.§5A§ = param1;
      }
      
      public function §>Y§() : Number
      {
         return this.§5A§;
      }
      
      public function §!!,§(param1:Number) : void
      {
         b2internal::?2.SetAwake(true);
         b2internal::!N.SetAwake(true);
         this.§+K§ = param1;
      }
      
      public function §9!#§() : Number
      {
         return this.§+K§;
      }
      
      public function §;!%§() : Number
      {
         return this.§case §;
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
         var _loc2_:b2Body = b2internal::?2;
         var _loc3_:b2Body = b2internal::!N;
         b2internal::1!P.SetV(_loc2_.§6A§());
         b2internal::+i.SetV(_loc3_.§6A§());
         var _loc6_:b2Transform = _loc2_.§6!a§();
         var _loc7_:b2Transform = _loc3_.§6!a§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::1!P.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::1!P.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::+i.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::+i.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §0#§ = _loc2_.§!q§;
         § f§ = _loc3_.§!q§;
         §?!c§ = _loc2_.§&!Y§;
         §`;§ = _loc3_.§&!Y§;
         this.§]F§.SetV(b2Math.§3D§(_loc6_.R,this.§%T§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§]F§.y - (_loc13_ + _loc9_) * this.§]F§.x;
         this.m_a2 = _loc10_ * this.§]F§.y - _loc11_ * this.§]F§.x;
         this.§%U§ = b2internal::0# + b2internal:: f + b2internal::?!c * this.m_a1 * this.m_a1 + b2internal::`; * this.m_a2 * this.m_a2;
         this.§%U§ = this.§%U§ > Number.MIN_VALUE ? Number(1 / this.§%U§) : Number(0);
         this.§'7§.SetV(b2Math.§3D§(_loc6_.R,this.§0!X§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§'7§.y - (_loc13_ + _loc9_) * this.§'7§.x;
         this.m_s2 = _loc10_ * this.§'7§.y - _loc11_ * this.§'7§.x;
         var _loc14_:Number = b2internal::0#;
         var _loc15_:Number = b2internal:: f;
         var _loc16_:Number = b2internal::?!c;
         var _loc17_:Number = b2internal::`;;
         this.§-U§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§-U§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§-U§.col2.x = this.§-U§.col1.y;
         this.§-U§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§=!C§)
         {
            _loc18_ = this.§]F§.x * _loc12_ + this.§]F§.y * _loc13_;
            if(b2Math.§4B§(this.§5k§ - this.§3g§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§!!7§ = b2internal::>M;
            }
            else if(_loc18_ <= this.§3g§)
            {
               if(this.§!!7§ != b2internal::[<)
               {
                  this.§!!7§ = b2internal::[<;
                  this.§0$§.y = 0;
               }
            }
            else if(_loc18_ >= this.§5k§)
            {
               if(this.§!!7§ != b2internal::^!T)
               {
                  this.§!!7§ = b2internal::^!T;
                  this.§0$§.y = 0;
               }
            }
            else
            {
               this.§!!7§ = b2internal::5s;
               this.§0$§.y = 0;
            }
         }
         else
         {
            this.§!!7§ = b2internal::5s;
         }
         if(this.§7^§ == false)
         {
            this.§case § = 0;
         }
         if(param1.§7U§)
         {
            this.§0$§.x *= param1.§1J§;
            this.§0$§.y *= param1.§1J§;
            this.§case § *= param1.§1J§;
            _loc19_ = this.§0$§.x * this.§'7§.x + (this.§case § + this.§0$§.y) * this.§]F§.x;
            _loc20_ = this.§0$§.x * this.§'7§.y + (this.§case § + this.§0$§.y) * this.§]F§.y;
            _loc21_ = this.§0$§.x * this.m_s1 + (this.§case § + this.§0$§.y) * this.m_a1;
            _loc22_ = this.§0$§.x * this.m_s2 + (this.§case § + this.§0$§.y) * this.m_a2;
            _loc2_.§#P§.x -= b2internal::0# * _loc19_;
            _loc2_.§#P§.y -= b2internal::0# * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::?!c * _loc21_;
            _loc3_.§#P§.x += b2internal:: f * _loc19_;
            _loc3_.§#P§.y += b2internal:: f * _loc20_;
            _loc3_.m_angularVelocity += b2internal::`; * _loc22_;
         }
         else
         {
            this.§0$§.§0'§();
            this.§case § = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::?2;
         var _loc3_:b2Body = b2internal::!N;
         var _loc4_:b2Vec2 = _loc2_.§#P§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§#P§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§7^§ && this.§!!7§ != b2internal::>M)
         {
            _loc13_ = this.§]F§.x * (_loc6_.x - _loc4_.x) + this.§]F§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§%U§ * (this.§5A§ - _loc13_);
            _loc15_ = this.§case §;
            _loc16_ = param1.§<G§ * this.§+K§;
            this.§case § = b2Math.§%%§(this.§case § + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§case § - _loc15_) * this.§]F§.x;
            _loc9_ = _loc14_ * this.§]F§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::0# * _loc8_;
            _loc4_.y -= b2internal::0# * _loc9_;
            _loc5_ -= b2internal::?!c * _loc10_;
            _loc6_.x += b2internal:: f * _loc8_;
            _loc6_.y += b2internal:: f * _loc9_;
            _loc7_ += b2internal::`; * _loc11_;
         }
         var _loc12_:Number = this.§'7§.x * (_loc6_.x - _loc4_.x) + this.§'7§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§=!C§ && this.§!!7§ != b2internal::5s)
         {
            _loc17_ = this.§]F§.x * (_loc6_.x - _loc4_.x) + this.§]F§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§0$§.Copy();
            _loc19_ = this.§-U§.§@L§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§0$§.§>!+§(_loc19_);
            if(this.§!!7§ == b2internal::[<)
            {
               this.§0$§.y = b2Math.§`!d§(this.§0$§.y,0);
            }
            else if(this.§!!7§ == b2internal::^!T)
            {
               this.§0$§.y = b2Math.§]!F§(this.§0$§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§0$§.y - _loc18_.y) * this.§-U§.col2.x;
            if(this.§-U§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§-U§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§0$§.x = _loc21_;
            _loc19_.x = this.§0$§.x - _loc18_.x;
            _loc19_.y = this.§0$§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§'7§.x + _loc19_.y * this.§]F§.x;
            _loc9_ = _loc19_.x * this.§'7§.y + _loc19_.y * this.§]F§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::0# * _loc8_;
            _loc4_.y -= b2internal::0# * _loc9_;
            _loc5_ -= b2internal::?!c * _loc10_;
            _loc6_.x += b2internal:: f * _loc8_;
            _loc6_.y += b2internal:: f * _loc9_;
            _loc7_ += b2internal::`; * _loc11_;
         }
         else
         {
            if(this.§-U§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§-U§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§0$§.x += _loc22_;
            _loc8_ = _loc22_ * this.§'7§.x;
            _loc9_ = _loc22_ * this.§'7§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::0# * _loc8_;
            _loc4_.y -= b2internal::0# * _loc9_;
            _loc5_ -= b2internal::?!c * _loc10_;
            _loc6_.x += b2internal:: f * _loc8_;
            _loc6_.y += b2internal:: f * _loc9_;
            _loc7_ += b2internal::`; * _loc11_;
         }
         _loc2_.§#P§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§#P§.SetV(_loc6_);
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
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = b2internal::?2;
         var _loc5_:b2Body = b2internal::!N;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§@y§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§@y§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::1!P.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::1!P.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::+i.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::+i.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§=!C§)
         {
            this.§]F§ = b2Math.§3D§(_loc20_,this.§%T§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§]F§.y - (_loc27_ + _loc23_) * this.§]F§.x;
            this.m_a2 = _loc24_ * this.§]F§.y - _loc25_ * this.§]F§.x;
            _loc34_ = this.§]F§.x * _loc26_ + this.§]F§.y * _loc27_;
            if(b2Math.§4B§(this.§5k§ - this.§3g§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§%%§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§4B§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§3g§)
            {
               _loc19_ = b2Math.§%%§(_loc34_ - this.§3g§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§3g§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§5k§)
            {
               _loc19_ = b2Math.§%%§(_loc34_ - this.§5k§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§5k§;
               _loc18_ = true;
            }
         }
         this.§'7§ = b2Math.§3D§(_loc20_,this.§0!X§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§'7§.y - (_loc27_ + _loc23_) * this.§'7§.x;
         this.m_s2 = _loc24_ * this.§'7§.y - _loc25_ * this.§'7§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§'7§.x * _loc26_ + this.§'7§.y * _loc27_;
         _loc16_ = b2Math.§`!d§(_loc16_,b2Math.§4B§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::0#;
            _loc13_ = b2internal:: f;
            _loc14_ = b2internal::?!c;
            _loc15_ = b2internal::`;;
            this.§-U§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§-U§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§-U§.col2.x = this.§-U§.col1.y;
            this.§-U§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§-U§.§@L§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::0#;
            _loc13_ = b2internal:: f;
            _loc14_ = b2internal::?!c;
            _loc15_ = b2internal::`;;
            if((_loc35_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2) != 0)
            {
               _loc36_ = -_loc29_ / _loc35_;
            }
            else
            {
               _loc36_ = 0;
            }
            _loc28_.x = _loc36_;
            _loc28_.y = 0;
         }
         var _loc30_:Number = _loc28_.x * this.§'7§.x + _loc28_.y * this.§]F§.x;
         var _loc31_:Number = _loc28_.x * this.§'7§.y + _loc28_.y * this.§]F§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::0# * _loc30_;
         _loc6_.y -= b2internal::0# * _loc31_;
         _loc7_ -= b2internal::?!c * _loc32_;
         _loc8_.x += b2internal:: f * _loc30_;
         _loc8_.y += b2internal:: f * _loc31_;
         _loc9_ += b2internal::`; * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§ L§();
         _loc5_.§ L§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
