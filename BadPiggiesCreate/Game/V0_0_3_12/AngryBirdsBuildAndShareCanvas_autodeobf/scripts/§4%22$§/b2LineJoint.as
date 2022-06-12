package §4"$§
{
   import §&!M§.b2Body;
   import §&!M§.b2TimeStep;
   import §3!t§.b2Mat22;
   import §3!t§.b2Math;
   import §3!t§.b2Transform;
   import §3!t§.b2Vec2;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §?s§:b2Vec2;
      
      private var §%!4§:b2Vec2;
      
      private var §+6§:b2Vec2;
      
      private var §@!w§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §3!<§:b2Mat22;
      
      private var §>&§:b2Vec2;
      
      private var §@"-§:Number;
      
      private var §@!S§:Number;
      
      private var §[!1§:Number;
      
      private var §^!=§:Number;
      
      private var §>!y§:Number;
      
      private var §#x§:Number;
      
      private var § =§:Boolean;
      
      private var §#!l§:Boolean;
      
      private var §-J§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?s§ = new b2Vec2();
         this.§%!4§ = new b2Vec2();
         this.§+6§ = new b2Vec2();
         this.§@!w§ = new b2Vec2();
         this.§3!<§ = new b2Mat22();
         this.§>&§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ 3§);
         this.m_localAnchor2.SetV(param1.§ '§);
         this.§?s§.SetV(param1.§@5§);
         this.§%!4§.x = -this.§?s§.y;
         this.§%!4§.y = this.§?s§.x;
         this.§>&§.§ 4§();
         this.§@"-§ = 0;
         this.§@!S§ = 0;
         this.§[!1§ = param1.§0"4§;
         this.§^!=§ = param1.§@!B§;
         this.§>!y§ = param1.§3c§;
         this.§#x§ = param1.motorSpeed;
         this.§ =§ = param1.§%"9§;
         this.§#!l§ = param1.§^g§;
         this.§-J§ = b2internal::21;
         this.§+6§.§ 4§();
         this.§@!w§.§ 4§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"!U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!3.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§>&§.x * this.§@!w§.x + (this.§@!S§ + this.§>&§.y) * this.§+6§.x),param1 * (this.§>&§.x * this.§@!w§.y + (this.§@!S§ + this.§>&§.y) * this.§+6§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>&§.y;
      }
      
      public function §^"6§() : Number
      {
         var _loc1_:b2Body = b2internal::"!U;
         var _loc2_:b2Body = b2internal::!!3;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§#!3§(this.§?s§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §+!z§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::"!U;
         var _loc2_:b2Body = b2internal::!!3;
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
         var _loc15_:b2Vec2 = _loc1_.§#!3§(this.§?s§);
         var _loc16_:b2Vec2 = _loc1_.§[!m§;
         var _loc17_:b2Vec2 = _loc2_.§[!m§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §4!9§() : Boolean
      {
         return this.§ =§;
      }
      
      public function §@Z§(param1:Boolean) : void
      {
         b2internal::"!U.SetAwake(true);
         b2internal::!!3.SetAwake(true);
         this.§ =§ = param1;
      }
      
      public function §1x§() : Number
      {
         return this.§[!1§;
      }
      
      public function § $§() : Number
      {
         return this.§^!=§;
      }
      
      public function §?4§(param1:Number, param2:Number) : void
      {
         b2internal::"!U.SetAwake(true);
         b2internal::!!3.SetAwake(true);
         this.§[!1§ = param1;
         this.§^!=§ = param2;
      }
      
      public function §finally§() : Boolean
      {
         return this.§#!l§;
      }
      
      public function §?!l§(param1:Boolean) : void
      {
         b2internal::"!U.SetAwake(true);
         b2internal::!!3.SetAwake(true);
         this.§#!l§ = param1;
      }
      
      public function §"X§(param1:Number) : void
      {
         b2internal::"!U.SetAwake(true);
         b2internal::!!3.SetAwake(true);
         this.§#x§ = param1;
      }
      
      public function §3!L§() : Number
      {
         return this.§#x§;
      }
      
      public function §%>§(param1:Number) : void
      {
         b2internal::"!U.SetAwake(true);
         b2internal::!!3.SetAwake(true);
         this.§>!y§ = param1;
      }
      
      public function §&!6§() : Number
      {
         return this.§>!y§;
      }
      
      public function §[;§() : Number
      {
         return this.§@!S§;
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
         var _loc2_:b2Body = b2internal::"!U;
         var _loc3_:b2Body = b2internal::!!3;
         b2internal::9;.SetV(_loc2_.§9",§());
         b2internal::[!0.SetV(_loc3_.§9",§());
         var _loc6_:b2Transform = _loc2_.§=!y§();
         var _loc7_:b2Transform = _loc3_.§=!y§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::9;.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::9;.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::[!0.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::[!0.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §`!i§ = _loc2_.§+!O§;
         §6!§ = _loc3_.§+!O§;
         §;a§ = _loc2_.§#f§;
         §3B§ = _loc3_.§#f§;
         this.§+6§.SetV(b2Math.§!!7§(_loc6_.R,this.§?s§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§+6§.y - (_loc13_ + _loc9_) * this.§+6§.x;
         this.m_a2 = _loc10_ * this.§+6§.y - _loc11_ * this.§+6§.x;
         this.§@"-§ = b2internal::`!i + b2internal::6! + b2internal::;a * this.m_a1 * this.m_a1 + b2internal::3B * this.m_a2 * this.m_a2;
         this.§@"-§ = this.§@"-§ > Number.MIN_VALUE ? Number(1 / this.§@"-§) : Number(0);
         this.§@!w§.SetV(b2Math.§!!7§(_loc6_.R,this.§%!4§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§@!w§.y - (_loc13_ + _loc9_) * this.§@!w§.x;
         this.m_s2 = _loc10_ * this.§@!w§.y - _loc11_ * this.§@!w§.x;
         var _loc14_:Number = b2internal::`!i;
         var _loc15_:Number = b2internal::6!;
         var _loc16_:Number = b2internal::;a;
         var _loc17_:Number = b2internal::3B;
         this.§3!<§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§3!<§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§3!<§.col2.x = this.§3!<§.col1.y;
         this.§3!<§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§ =§)
         {
            _loc18_ = this.§+6§.x * _loc12_ + this.§+6§.y * _loc13_;
            if(b2Math.§3!n§(this.§^!=§ - this.§[!1§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§-J§ = b2internal::"h;
            }
            else if(_loc18_ <= this.§[!1§)
            {
               if(this.§-J§ != b2internal::<i)
               {
                  this.§-J§ = b2internal::<i;
                  this.§>&§.y = 0;
               }
            }
            else if(_loc18_ >= this.§^!=§)
            {
               if(this.§-J§ != b2internal::2!s)
               {
                  this.§-J§ = b2internal::2!s;
                  this.§>&§.y = 0;
               }
            }
            else
            {
               this.§-J§ = b2internal::21;
               this.§>&§.y = 0;
            }
         }
         else
         {
            this.§-J§ = b2internal::21;
         }
         if(this.§#!l§ == false)
         {
            this.§@!S§ = 0;
         }
         if(param1.§50§)
         {
            this.§>&§.x *= param1.§<!4§;
            this.§>&§.y *= param1.§<!4§;
            this.§@!S§ *= param1.§<!4§;
            _loc19_ = this.§>&§.x * this.§@!w§.x + (this.§@!S§ + this.§>&§.y) * this.§+6§.x;
            _loc20_ = this.§>&§.x * this.§@!w§.y + (this.§@!S§ + this.§>&§.y) * this.§+6§.y;
            _loc21_ = this.§>&§.x * this.m_s1 + (this.§@!S§ + this.§>&§.y) * this.m_a1;
            _loc22_ = this.§>&§.x * this.m_s2 + (this.§@!S§ + this.§>&§.y) * this.m_a2;
            _loc2_.§[!m§.x -= b2internal::`!i * _loc19_;
            _loc2_.§[!m§.y -= b2internal::`!i * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::;a * _loc21_;
            _loc3_.§[!m§.x += b2internal::6! * _loc19_;
            _loc3_.§[!m§.y += b2internal::6! * _loc20_;
            _loc3_.m_angularVelocity += b2internal::3B * _loc22_;
         }
         else
         {
            this.§>&§.§ 4§();
            this.§@!S§ = 0;
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
         var _loc2_:b2Body = b2internal::"!U;
         var _loc3_:b2Body = b2internal::!!3;
         var _loc4_:b2Vec2 = _loc2_.§[!m§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§[!m§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§#!l§ && this.§-J§ != b2internal::"h)
         {
            _loc13_ = this.§+6§.x * (_loc6_.x - _loc4_.x) + this.§+6§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§@"-§ * (this.§#x§ - _loc13_);
            _loc15_ = this.§@!S§;
            _loc16_ = param1.§!"7§ * this.§>!y§;
            this.§@!S§ = b2Math.§4"?§(this.§@!S§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§@!S§ - _loc15_) * this.§+6§.x;
            _loc9_ = _loc14_ * this.§+6§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::`!i * _loc8_;
            _loc4_.y -= b2internal::`!i * _loc9_;
            _loc5_ -= b2internal::;a * _loc10_;
            _loc6_.x += b2internal::6! * _loc8_;
            _loc6_.y += b2internal::6! * _loc9_;
            _loc7_ += b2internal::3B * _loc11_;
         }
         var _loc12_:Number = this.§@!w§.x * (_loc6_.x - _loc4_.x) + this.§@!w§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§ =§ && this.§-J§ != b2internal::21)
         {
            _loc17_ = this.§+6§.x * (_loc6_.x - _loc4_.x) + this.§+6§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§>&§.Copy();
            _loc19_ = this.§3!<§.§6;§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§>&§.§9!6§(_loc19_);
            if(this.§-J§ == b2internal::<i)
            {
               this.§>&§.y = b2Math.§9b§(this.§>&§.y,0);
            }
            else if(this.§-J§ == b2internal::2!s)
            {
               this.§>&§.y = b2Math.§#!>§(this.§>&§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§>&§.y - _loc18_.y) * this.§3!<§.col2.x;
            if(this.§3!<§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§3!<§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§>&§.x = _loc21_;
            _loc19_.x = this.§>&§.x - _loc18_.x;
            _loc19_.y = this.§>&§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§@!w§.x + _loc19_.y * this.§+6§.x;
            _loc9_ = _loc19_.x * this.§@!w§.y + _loc19_.y * this.§+6§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::`!i * _loc8_;
            _loc4_.y -= b2internal::`!i * _loc9_;
            _loc5_ -= b2internal::;a * _loc10_;
            _loc6_.x += b2internal::6! * _loc8_;
            _loc6_.y += b2internal::6! * _loc9_;
            _loc7_ += b2internal::3B * _loc11_;
         }
         else
         {
            if(this.§3!<§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§3!<§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§>&§.x += _loc22_;
            _loc8_ = _loc22_ * this.§@!w§.x;
            _loc9_ = _loc22_ * this.§@!w§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::`!i * _loc8_;
            _loc4_.y -= b2internal::`!i * _loc9_;
            _loc5_ -= b2internal::;a * _loc10_;
            _loc6_.x += b2internal::6! * _loc8_;
            _loc6_.y += b2internal::6! * _loc9_;
            _loc7_ += b2internal::3B * _loc11_;
         }
         _loc2_.§[!m§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§[!m§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::"!U;
         var _loc5_:b2Body = b2internal::!!3;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§1k§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§1k§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::9;.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::9;.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::[!0.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::[!0.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§ =§)
         {
            this.§+6§ = b2Math.§!!7§(_loc20_,this.§?s§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§+6§.y - (_loc27_ + _loc23_) * this.§+6§.x;
            this.m_a2 = _loc24_ * this.§+6§.y - _loc25_ * this.§+6§.x;
            _loc34_ = this.§+6§.x * _loc26_ + this.§+6§.y * _loc27_;
            if(b2Math.§3!n§(this.§^!=§ - this.§[!1§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§4"?§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§3!n§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§[!1§)
            {
               _loc19_ = b2Math.§4"?§(_loc34_ - this.§[!1§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§[!1§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§^!=§)
            {
               _loc19_ = b2Math.§4"?§(_loc34_ - this.§^!=§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§^!=§;
               _loc18_ = true;
            }
         }
         this.§@!w§ = b2Math.§!!7§(_loc20_,this.§%!4§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§@!w§.y - (_loc27_ + _loc23_) * this.§@!w§.x;
         this.m_s2 = _loc24_ * this.§@!w§.y - _loc25_ * this.§@!w§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§@!w§.x * _loc26_ + this.§@!w§.y * _loc27_;
         _loc16_ = b2Math.§9b§(_loc16_,b2Math.§3!n§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::`!i;
            _loc13_ = b2internal::6!;
            _loc14_ = b2internal::;a;
            _loc15_ = b2internal::3B;
            this.§3!<§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§3!<§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§3!<§.col2.x = this.§3!<§.col1.y;
            this.§3!<§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§3!<§.§6;§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::`!i;
            _loc13_ = b2internal::6!;
            _loc14_ = b2internal::;a;
            _loc15_ = b2internal::3B;
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
         var _loc30_:Number = _loc28_.x * this.§@!w§.x + _loc28_.y * this.§+6§.x;
         var _loc31_:Number = _loc28_.x * this.§@!w§.y + _loc28_.y * this.§+6§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::`!i * _loc30_;
         _loc6_.y -= b2internal::`!i * _loc31_;
         _loc7_ -= b2internal::;a * _loc32_;
         _loc8_.x += b2internal::6! * _loc30_;
         _loc8_.y += b2internal::6! * _loc31_;
         _loc9_ += b2internal::3B * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§=!z§();
         _loc5_.§=!z§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
