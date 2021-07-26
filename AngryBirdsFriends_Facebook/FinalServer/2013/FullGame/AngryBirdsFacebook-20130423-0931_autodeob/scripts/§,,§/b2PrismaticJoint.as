package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Mat33;
   import §6!^§.b2Math;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   import §6!^§.b2Vec3;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §2!L§:b2Vec2;
      
      private var §'_§:b2Vec2;
      
      private var §`"X§:Number;
      
      private var §1!?§:b2Vec2;
      
      private var §@!L§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §9!S§:b2Mat33;
      
      private var §2!_§:b2Vec3;
      
      private var §!K§:Number;
      
      private var §3!1§:Number;
      
      private var §4"'§:Number;
      
      private var §1!K§:Number;
      
      private var § !I§:Number;
      
      private var §+"$§:Number;
      
      private var §9!=§:Boolean;
      
      private var §3!A§:Boolean;
      
      private var §@!3§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§2!L§ = new b2Vec2();
         this.§'_§ = new b2Vec2();
         this.§1!?§ = new b2Vec2();
         this.§@!L§ = new b2Vec2();
         this.§9!S§ = new b2Mat33();
         this.§2!_§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§-!,§);
         this.m_localAnchor2.SetV(param1.§["9§);
         this.§2!L§.SetV(param1.§""'§);
         this.§'_§.x = -this.§2!L§.y;
         this.§'_§.y = this.§2!L§.x;
         this.§`"X§ = param1.§1b§;
         this.§2!_§.§%y§();
         this.§!K§ = 0;
         this.§3!1§ = 0;
         this.§4"'§ = param1.§9V§;
         this.§1!K§ = param1.§3!t§;
         this.§ !I§ = param1.§%!7§;
         this.§+"$§ = param1.motorSpeed;
         this.§9!=§ = param1.§5!!§;
         this.§3!A§ = param1.§<!0§;
         this.§@!3§ = b2internal::>Q;
         this.§1!?§.§%y§();
         this.§@!L§.§%y§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§2!_§.x * this.§@!L§.x + (this.§3!1§ + this.§2!_§.z) * this.§1!?§.x),param1 * (this.§2!_§.x * this.§@!L§.y + (this.§3!1§ + this.§2!_§.z) * this.§1!?§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§2!_§.y;
      }
      
      public function §-"<§() : Number
      {
         var _loc1_:b2Body = b2internal::3"X;
         var _loc2_:b2Body = b2internal::5!;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§^"C§(this.§2!L§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §[Y§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::3"X;
         var _loc2_:b2Body = b2internal::5!;
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
         var _loc15_:b2Vec2 = _loc1_.§^"C§(this.§2!L§);
         var _loc16_:b2Vec2 = _loc1_.§"!_§;
         var _loc17_:b2Vec2 = _loc2_.§"!_§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §6m§() : Boolean
      {
         return this.§9!=§;
      }
      
      public function §[g§(param1:Boolean) : void
      {
         b2internal::3"X.SetAwake(true);
         b2internal::5!.SetAwake(true);
         this.§9!=§ = param1;
      }
      
      public function §1I§() : Number
      {
         return this.§4"'§;
      }
      
      public function §=@§() : Number
      {
         return this.§1!K§;
      }
      
      public function §=!d§(param1:Number, param2:Number) : void
      {
         b2internal::3"X.SetAwake(true);
         b2internal::5!.SetAwake(true);
         this.§4"'§ = param1;
         this.§1!K§ = param2;
      }
      
      public function §-"0§() : Boolean
      {
         return this.§3!A§;
      }
      
      public function §1![§(param1:Boolean) : void
      {
         b2internal::3"X.SetAwake(true);
         b2internal::5!.SetAwake(true);
         this.§3!A§ = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::3"X.SetAwake(true);
         b2internal::5!.SetAwake(true);
         this.§+"$§ = param1;
      }
      
      public function §+"E§() : Number
      {
         return this.§+"$§;
      }
      
      public function §&!h§(param1:Number) : void
      {
         b2internal::3"X.SetAwake(true);
         b2internal::5!.SetAwake(true);
         this.§ !I§ = param1;
      }
      
      public function §'=§() : Number
      {
         return this.§3!1§;
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
         var _loc2_:b2Body = b2internal::3"X;
         var _loc3_:b2Body = b2internal::5!;
         b2internal::+!L.SetV(_loc2_.§6!J§());
         b2internal::`"Z.SetV(_loc3_.§6!J§());
         var _loc6_:b2Transform = _loc2_.§!"0§();
         var _loc7_:b2Transform = _loc3_.§!"0§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::+!L.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::+!L.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::`"Z.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::`"Z.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §1!x§ = _loc2_.§-@§;
         §&!D§ = _loc3_.§-@§;
         §?]§ = _loc2_.§,H§;
         §!"S§ = _loc3_.§,H§;
         this.§1!?§.SetV(b2Math.§5!w§(_loc6_.R,this.§2!L§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§1!?§.y - (_loc13_ + _loc9_) * this.§1!?§.x;
         this.m_a2 = _loc10_ * this.§1!?§.y - _loc11_ * this.§1!?§.x;
         this.§!K§ = b2internal::1!x + b2internal::&!D + b2internal::?] * this.m_a1 * this.m_a1 + b2internal::!"S * this.m_a2 * this.m_a2;
         if(this.§!K§ > Number.MIN_VALUE)
         {
            this.§!K§ = 1 / this.§!K§;
         }
         this.§@!L§.SetV(b2Math.§5!w§(_loc6_.R,this.§'_§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§@!L§.y - (_loc13_ + _loc9_) * this.§@!L§.x;
         this.m_s2 = _loc10_ * this.§@!L§.y - _loc11_ * this.§@!L§.x;
         var _loc14_:Number = b2internal::1!x;
         var _loc15_:Number = b2internal::&!D;
         var _loc16_:Number = b2internal::?];
         var _loc17_:Number = b2internal::!"S;
         this.§9!S§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§9!S§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§9!S§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§9!S§.col2.x = this.§9!S§.col1.y;
         this.§9!S§.col2.y = _loc16_ + _loc17_;
         this.§9!S§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§9!S§.col3.x = this.§9!S§.col1.z;
         this.§9!S§.col3.y = this.§9!S§.col2.z;
         this.§9!S§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§9!=§)
         {
            _loc18_ = this.§1!?§.x * _loc12_ + this.§1!?§.y * _loc13_;
            if(b2Math.§#X§(this.§1!K§ - this.§4"'§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§@!3§ = b2internal::;!F;
            }
            else if(_loc18_ <= this.§4"'§)
            {
               if(this.§@!3§ != b2internal::93)
               {
                  this.§@!3§ = b2internal::93;
                  this.§2!_§.z = 0;
               }
            }
            else if(_loc18_ >= this.§1!K§)
            {
               if(this.§@!3§ != b2internal::,!E)
               {
                  this.§@!3§ = b2internal::,!E;
                  this.§2!_§.z = 0;
               }
            }
            else
            {
               this.§@!3§ = b2internal::>Q;
               this.§2!_§.z = 0;
            }
         }
         else
         {
            this.§@!3§ = b2internal::>Q;
         }
         if(this.§3!A§ == false)
         {
            this.§3!1§ = 0;
         }
         if(param1.§@I§)
         {
            this.§2!_§.x *= param1.§]'§;
            this.§2!_§.y *= param1.§]'§;
            this.§3!1§ *= param1.§]'§;
            _loc19_ = this.§2!_§.x * this.§@!L§.x + (this.§3!1§ + this.§2!_§.z) * this.§1!?§.x;
            _loc20_ = this.§2!_§.x * this.§@!L§.y + (this.§3!1§ + this.§2!_§.z) * this.§1!?§.y;
            _loc21_ = this.§2!_§.x * this.m_s1 + this.§2!_§.y + (this.§3!1§ + this.§2!_§.z) * this.m_a1;
            _loc22_ = this.§2!_§.x * this.m_s2 + this.§2!_§.y + (this.§3!1§ + this.§2!_§.z) * this.m_a2;
            _loc2_.§"!_§.x -= b2internal::1!x * _loc19_;
            _loc2_.§"!_§.y -= b2internal::1!x * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::?] * _loc21_;
            _loc3_.§"!_§.x += b2internal::&!D * _loc19_;
            _loc3_.§"!_§.y += b2internal::&!D * _loc20_;
            _loc3_.m_angularVelocity += b2internal::!"S * _loc22_;
         }
         else
         {
            this.§2!_§.§%y§();
            this.§3!1§ = 0;
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
         var _loc2_:b2Body = b2internal::3"X;
         var _loc3_:b2Body = b2internal::5!;
         var _loc4_:b2Vec2 = _loc2_.§"!_§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§"!_§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§3!A§ && this.§@!3§ != b2internal::;!F)
         {
            _loc14_ = this.§1!?§.x * (_loc6_.x - _loc4_.x) + this.§1!?§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§!K§ * (this.§+"$§ - _loc14_);
            _loc16_ = this.§3!1§;
            _loc17_ = param1.§;J§ * this.§ !I§;
            this.§3!1§ = b2Math.§1"T§(this.§3!1§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§3!1§ - _loc16_) * this.§1!?§.x;
            _loc9_ = _loc15_ * this.§1!?§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::1!x * _loc8_;
            _loc4_.y -= b2internal::1!x * _loc9_;
            _loc5_ -= b2internal::?] * _loc10_;
            _loc6_.x += b2internal::&!D * _loc8_;
            _loc6_.y += b2internal::&!D * _loc9_;
            _loc7_ += b2internal::!"S * _loc11_;
         }
         var _loc12_:Number = this.§@!L§.x * (_loc6_.x - _loc4_.x) + this.§@!L§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§9!=§ && this.§@!3§ != b2internal::>Q)
         {
            _loc18_ = this.§1!?§.x * (_loc6_.x - _loc4_.x) + this.§1!?§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§2!_§.Copy();
            _loc20_ = this.§9!S§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§2!_§.§6"3§(_loc20_);
            if(this.§@!3§ == b2internal::93)
            {
               this.§2!_§.z = b2Math.§["2§(this.§2!_§.z,0);
            }
            else if(this.§@!3§ == b2internal::,!E)
            {
               this.§2!_§.z = b2Math.§@U§(this.§2!_§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§2!_§.z - _loc19_.z) * this.§9!S§.col3.x;
            _loc22_ = -_loc13_ - (this.§2!_§.z - _loc19_.z) * this.§9!S§.col3.y;
            _loc23_ = this.§9!S§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§2!_§.x = _loc23_.x;
            this.§2!_§.y = _loc23_.y;
            _loc20_.x = this.§2!_§.x - _loc19_.x;
            _loc20_.y = this.§2!_§.y - _loc19_.y;
            _loc20_.z = this.§2!_§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§@!L§.x + _loc20_.z * this.§1!?§.x;
            _loc9_ = _loc20_.x * this.§@!L§.y + _loc20_.z * this.§1!?§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::1!x * _loc8_;
            _loc4_.y -= b2internal::1!x * _loc9_;
            _loc5_ -= b2internal::?] * _loc10_;
            _loc6_.x += b2internal::&!D * _loc8_;
            _loc6_.y += b2internal::&!D * _loc9_;
            _loc7_ += b2internal::!"S * _loc11_;
         }
         else
         {
            _loc24_ = this.§9!S§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§2!_§.x += _loc24_.x;
            this.§2!_§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§@!L§.x;
            _loc9_ = _loc24_.x * this.§@!L§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::1!x * _loc8_;
            _loc4_.y -= b2internal::1!x * _loc9_;
            _loc5_ -= b2internal::?] * _loc10_;
            _loc6_.x += b2internal::&!D * _loc8_;
            _loc6_.y += b2internal::&!D * _loc9_;
            _loc7_ += b2internal::!"S * _loc11_;
         }
         _loc2_.§"!_§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§"!_§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::3"X;
         var _loc5_:b2Body = b2internal::5!;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§;G§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§;G§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::+!L.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::+!L.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::`"Z.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::`"Z.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§9!=§)
         {
            this.§1!?§ = b2Math.§5!w§(_loc20_,this.§2!L§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§1!?§.y - (_loc27_ + _loc23_) * this.§1!?§.x;
            this.m_a2 = _loc24_ * this.§1!?§.y - _loc25_ * this.§1!?§.x;
            _loc35_ = this.§1!?§.x * _loc26_ + this.§1!?§.y * _loc27_;
            if(b2Math.§#X§(this.§1!K§ - this.§4"'§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§1"T§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§#X§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§4"'§)
            {
               _loc19_ = b2Math.§1"T§(_loc35_ - this.§4"'§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§4"'§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§1!K§)
            {
               _loc19_ = b2Math.§1"T§(_loc35_ - this.§1!K§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§1!K§;
               _loc18_ = true;
            }
         }
         this.§@!L§ = b2Math.§5!w§(_loc20_,this.§'_§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§@!L§.y - (_loc27_ + _loc23_) * this.§@!L§.x;
         this.m_s2 = _loc24_ * this.§@!L§.y - _loc25_ * this.§@!L§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§@!L§.x * _loc26_ + this.§@!L§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§`"X§;
         _loc16_ = b2Math.§["2§(_loc16_,b2Math.§#X§(_loc29_));
         _loc17_ = b2Math.§#X§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::1!x;
            _loc13_ = b2internal::&!D;
            _loc14_ = b2internal::?];
            _loc15_ = b2internal::!"S;
            this.§9!S§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§9!S§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§9!S§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§9!S§.col2.x = this.§9!S§.col1.y;
            this.§9!S§.col2.y = _loc14_ + _loc15_;
            this.§9!S§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§9!S§.col3.x = this.§9!S§.col1.z;
            this.§9!S§.col3.y = this.§9!S§.col2.z;
            this.§9!S§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§9!S§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::1!x;
            _loc13_ = b2internal::&!D;
            _loc14_ = b2internal::?];
            _loc15_ = b2internal::!"S;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§9!S§.col1.Set(_loc36_,_loc37_,0);
            this.§9!S§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§9!S§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§@!L§.x + _loc28_.z * this.§1!?§.x;
         var _loc32_:Number = _loc28_.x * this.§@!L§.y + _loc28_.z * this.§1!?§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::1!x * _loc31_;
         _loc6_.y -= b2internal::1!x * _loc32_;
         _loc7_ -= b2internal::?] * _loc33_;
         _loc8_.x += b2internal::&!D * _loc31_;
         _loc8_.y += b2internal::&!D * _loc32_;
         _loc9_ += b2internal::!"S * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§+!q§();
         _loc5_.§+!q§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
