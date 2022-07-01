package §;!r§
{
   import §,v§.b2Body;
   import §,v§.b2TimeStep;
   import §-!A§.b2Mat22;
   import §-!A§.b2Math;
   import §-!A§.b2Transform;
   import §-!A§.b2Vec2;
   import §@h§.b2Settings;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §>!1§:b2Vec2;
      
      private var §[!W§:b2Vec2;
      
      private var §=!g§:b2Vec2;
      
      private var §1o§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §[!e§:b2Mat22;
      
      private var §[!9§:b2Vec2;
      
      private var §'"1§:Number;
      
      private var § !L§:Number;
      
      private var §&!G§:Number;
      
      private var §=z§:Number;
      
      private var §4!;§:Number;
      
      private var §6r§:Number;
      
      private var §[!C§:Boolean;
      
      private var §]n§:Boolean;
      
      private var §1!E§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§>!1§ = new b2Vec2();
         this.§[!W§ = new b2Vec2();
         this.§=!g§ = new b2Vec2();
         this.§1o§ = new b2Vec2();
         this.§[!e§ = new b2Mat22();
         this.§[!9§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§5S§);
         this.m_localAnchor2.SetV(param1.§-!9§);
         this.§>!1§.SetV(param1.§;!1§);
         this.§[!W§.x = -this.§>!1§.y;
         this.§[!W§.y = this.§>!1§.x;
         this.§[!9§.§9N§();
         this.§'"1§ = 0;
         this.§ !L§ = 0;
         this.§&!G§ = param1.§]1§;
         this.§=z§ = param1.§=!$§;
         this.§4!;§ = param1.§@M§;
         this.§6r§ = param1.motorSpeed;
         this.§[!C§ = param1.§%"5§;
         this.§]n§ = param1.§0z§;
         this.§1!E§ = b2internal::-!n;
         this.§=!g§.§9N§();
         this.§1o§.§9N§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::-U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: !>.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§[!9§.x * this.§1o§.x + (this.§ !L§ + this.§[!9§.y) * this.§=!g§.x),param1 * (this.§[!9§.x * this.§1o§.y + (this.§ !L§ + this.§[!9§.y) * this.§=!g§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[!9§.y;
      }
      
      public function §&!V§() : Number
      {
         var _loc1_:b2Body = b2internal::-U;
         var _loc2_:b2Body = b2internal:: !>;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§#!T§(this.§>!1§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function § B§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::-U;
         var _loc2_:b2Body = b2internal:: !>;
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
         var _loc15_:b2Vec2 = _loc1_.§#!T§(this.§>!1§);
         var _loc16_:b2Vec2 = _loc1_.§4!"§;
         var _loc17_:b2Vec2 = _loc2_.§4!"§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §-!]§() : Boolean
      {
         return this.§[!C§;
      }
      
      public function §3q§(param1:Boolean) : void
      {
         b2internal::-U.SetAwake(true);
         b2internal:: !>.SetAwake(true);
         this.§[!C§ = param1;
      }
      
      public function §^X§() : Number
      {
         return this.§&!G§;
      }
      
      public function §=b§() : Number
      {
         return this.§=z§;
      }
      
      public function §^"$§(param1:Number, param2:Number) : void
      {
         b2internal::-U.SetAwake(true);
         b2internal:: !>.SetAwake(true);
         this.§&!G§ = param1;
         this.§=z§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§]n§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::-U.SetAwake(true);
         b2internal:: !>.SetAwake(true);
         this.§]n§ = param1;
      }
      
      public function §!-§(param1:Number) : void
      {
         b2internal::-U.SetAwake(true);
         b2internal:: !>.SetAwake(true);
         this.§6r§ = param1;
      }
      
      public function §7i§() : Number
      {
         return this.§6r§;
      }
      
      public function §"!%§(param1:Number) : void
      {
         b2internal::-U.SetAwake(true);
         b2internal:: !>.SetAwake(true);
         this.§4!;§ = param1;
      }
      
      public function §0"4§() : Number
      {
         return this.§4!;§;
      }
      
      public function §8!]§() : Number
      {
         return this.§ !L§;
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
         var _loc2_:b2Body = b2internal::-U;
         var _loc3_:b2Body = b2internal:: !>;
         b2internal::]!-.SetV(_loc2_.§%!L§());
         b2internal::,!C.SetV(_loc3_.§%!L§());
         var _loc6_:b2Transform = _loc2_.§^!G§();
         var _loc7_:b2Transform = _loc3_.§^!G§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::]!-.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::]!-.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::,!C.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::,!C.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §,b§ = _loc2_.§3!o§;
         §?I§ = _loc3_.§3!o§;
         §9!4§ = _loc2_.§%!^§;
         §0G§ = _loc3_.§%!^§;
         this.§=!g§.SetV(b2Math.§+n§(_loc6_.R,this.§>!1§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§=!g§.y - (_loc13_ + _loc9_) * this.§=!g§.x;
         this.m_a2 = _loc10_ * this.§=!g§.y - _loc11_ * this.§=!g§.x;
         this.§'"1§ = b2internal::,b + b2internal::?I + b2internal::9!4 * this.m_a1 * this.m_a1 + b2internal::0G * this.m_a2 * this.m_a2;
         this.§'"1§ = this.§'"1§ > Number.MIN_VALUE ? Number(1 / this.§'"1§) : Number(0);
         this.§1o§.SetV(b2Math.§+n§(_loc6_.R,this.§[!W§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§1o§.y - (_loc13_ + _loc9_) * this.§1o§.x;
         this.m_s2 = _loc10_ * this.§1o§.y - _loc11_ * this.§1o§.x;
         var _loc14_:Number = b2internal::,b;
         var _loc15_:Number = b2internal::?I;
         var _loc16_:Number = b2internal::9!4;
         var _loc17_:Number = b2internal::0G;
         this.§[!e§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§[!e§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§[!e§.col2.x = this.§[!e§.col1.y;
         this.§[!e§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§[!C§)
         {
            _loc18_ = this.§=!g§.x * _loc12_ + this.§=!g§.y * _loc13_;
            if(b2Math.§'!B§(this.§=z§ - this.§&!G§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§1!E§ = b2internal::;c;
            }
            else if(_loc18_ <= this.§&!G§)
            {
               if(this.§1!E§ != b2internal::^1)
               {
                  this.§1!E§ = b2internal::^1;
                  this.§[!9§.y = 0;
               }
            }
            else if(_loc18_ >= this.§=z§)
            {
               if(this.§1!E§ != b2internal::<!s)
               {
                  this.§1!E§ = b2internal::<!s;
                  this.§[!9§.y = 0;
               }
            }
            else
            {
               this.§1!E§ = b2internal::-!n;
               this.§[!9§.y = 0;
            }
         }
         else
         {
            this.§1!E§ = b2internal::-!n;
         }
         if(this.§]n§ == false)
         {
            this.§ !L§ = 0;
         }
         if(param1.§-F§)
         {
            this.§[!9§.x *= param1.§;!y§;
            this.§[!9§.y *= param1.§;!y§;
            this.§ !L§ *= param1.§;!y§;
            _loc19_ = this.§[!9§.x * this.§1o§.x + (this.§ !L§ + this.§[!9§.y) * this.§=!g§.x;
            _loc20_ = this.§[!9§.x * this.§1o§.y + (this.§ !L§ + this.§[!9§.y) * this.§=!g§.y;
            _loc21_ = this.§[!9§.x * this.m_s1 + (this.§ !L§ + this.§[!9§.y) * this.m_a1;
            _loc22_ = this.§[!9§.x * this.m_s2 + (this.§ !L§ + this.§[!9§.y) * this.m_a2;
            _loc2_.§4!"§.x -= b2internal::,b * _loc19_;
            _loc2_.§4!"§.y -= b2internal::,b * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::9!4 * _loc21_;
            _loc3_.§4!"§.x += b2internal::?I * _loc19_;
            _loc3_.§4!"§.y += b2internal::?I * _loc20_;
            _loc3_.m_angularVelocity += b2internal::0G * _loc22_;
         }
         else
         {
            this.§[!9§.§9N§();
            this.§ !L§ = 0;
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
         var _loc2_:b2Body = b2internal::-U;
         var _loc3_:b2Body = b2internal:: !>;
         var _loc4_:b2Vec2 = _loc2_.§4!"§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§4!"§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§]n§ && this.§1!E§ != b2internal::;c)
         {
            _loc13_ = this.§=!g§.x * (_loc6_.x - _loc4_.x) + this.§=!g§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§'"1§ * (this.§6r§ - _loc13_);
            _loc15_ = this.§ !L§;
            _loc16_ = param1.§]>§ * this.§4!;§;
            this.§ !L§ = b2Math.§;p§(this.§ !L§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§ !L§ - _loc15_) * this.§=!g§.x;
            _loc9_ = _loc14_ * this.§=!g§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::,b * _loc8_;
            _loc4_.y -= b2internal::,b * _loc9_;
            _loc5_ -= b2internal::9!4 * _loc10_;
            _loc6_.x += b2internal::?I * _loc8_;
            _loc6_.y += b2internal::?I * _loc9_;
            _loc7_ += b2internal::0G * _loc11_;
         }
         var _loc12_:Number = this.§1o§.x * (_loc6_.x - _loc4_.x) + this.§1o§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§[!C§ && this.§1!E§ != b2internal::-!n)
         {
            _loc17_ = this.§=!g§.x * (_loc6_.x - _loc4_.x) + this.§=!g§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§[!9§.Copy();
            _loc19_ = this.§[!e§.§[J§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§[!9§.§!"§(_loc19_);
            if(this.§1!E§ == b2internal::^1)
            {
               this.§[!9§.y = b2Math.§"!;§(this.§[!9§.y,0);
            }
            else if(this.§1!E§ == b2internal::<!s)
            {
               this.§[!9§.y = b2Math.§4!T§(this.§[!9§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§[!9§.y - _loc18_.y) * this.§[!e§.col2.x;
            if(this.§[!e§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§[!e§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§[!9§.x = _loc21_;
            _loc19_.x = this.§[!9§.x - _loc18_.x;
            _loc19_.y = this.§[!9§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§1o§.x + _loc19_.y * this.§=!g§.x;
            _loc9_ = _loc19_.x * this.§1o§.y + _loc19_.y * this.§=!g§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::,b * _loc8_;
            _loc4_.y -= b2internal::,b * _loc9_;
            _loc5_ -= b2internal::9!4 * _loc10_;
            _loc6_.x += b2internal::?I * _loc8_;
            _loc6_.y += b2internal::?I * _loc9_;
            _loc7_ += b2internal::0G * _loc11_;
         }
         else
         {
            if(this.§[!e§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§[!e§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§[!9§.x += _loc22_;
            _loc8_ = _loc22_ * this.§1o§.x;
            _loc9_ = _loc22_ * this.§1o§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::,b * _loc8_;
            _loc4_.y -= b2internal::,b * _loc9_;
            _loc5_ -= b2internal::9!4 * _loc10_;
            _loc6_.x += b2internal::?I * _loc8_;
            _loc6_.y += b2internal::?I * _loc9_;
            _loc7_ += b2internal::0G * _loc11_;
         }
         _loc2_.§4!"§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§4!"§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::-U;
         var _loc5_:b2Body = b2internal:: !>;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§^n§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§^n§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::]!-.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::]!-.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::,!C.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::,!C.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§[!C§)
         {
            this.§=!g§ = b2Math.§+n§(_loc20_,this.§>!1§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§=!g§.y - (_loc27_ + _loc23_) * this.§=!g§.x;
            this.m_a2 = _loc24_ * this.§=!g§.y - _loc25_ * this.§=!g§.x;
            _loc34_ = this.§=!g§.x * _loc26_ + this.§=!g§.y * _loc27_;
            if(b2Math.§'!B§(this.§=z§ - this.§&!G§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§;p§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§'!B§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§&!G§)
            {
               _loc19_ = b2Math.§;p§(_loc34_ - this.§&!G§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§&!G§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§=z§)
            {
               _loc19_ = b2Math.§;p§(_loc34_ - this.§=z§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§=z§;
               _loc18_ = true;
            }
         }
         this.§1o§ = b2Math.§+n§(_loc20_,this.§[!W§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§1o§.y - (_loc27_ + _loc23_) * this.§1o§.x;
         this.m_s2 = _loc24_ * this.§1o§.y - _loc25_ * this.§1o§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§1o§.x * _loc26_ + this.§1o§.y * _loc27_;
         _loc16_ = b2Math.§"!;§(_loc16_,b2Math.§'!B§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::,b;
            _loc13_ = b2internal::?I;
            _loc14_ = b2internal::9!4;
            _loc15_ = b2internal::0G;
            this.§[!e§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§[!e§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§[!e§.col2.x = this.§[!e§.col1.y;
            this.§[!e§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§[!e§.§[J§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::,b;
            _loc13_ = b2internal::?I;
            _loc14_ = b2internal::9!4;
            _loc15_ = b2internal::0G;
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
         var _loc30_:Number = _loc28_.x * this.§1o§.x + _loc28_.y * this.§=!g§.x;
         var _loc31_:Number = _loc28_.x * this.§1o§.y + _loc28_.y * this.§=!g§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::,b * _loc30_;
         _loc6_.y -= b2internal::,b * _loc31_;
         _loc7_ -= b2internal::9!4 * _loc32_;
         _loc8_.x += b2internal::?I * _loc30_;
         _loc8_.y += b2internal::?I * _loc31_;
         _loc9_ += b2internal::0G * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§+!S§();
         _loc5_.§+!S§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
