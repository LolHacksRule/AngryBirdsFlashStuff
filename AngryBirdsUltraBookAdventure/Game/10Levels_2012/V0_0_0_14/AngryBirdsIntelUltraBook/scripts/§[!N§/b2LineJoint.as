package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §+!A§:b2Vec2;
      
      private var §6!;§:b2Vec2;
      
      private var §9u§:b2Vec2;
      
      private var §;!]§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §`!F§:b2Mat22;
      
      private var §+!P§:b2Vec2;
      
      private var §>y§:Number;
      
      private var §#!s§:Number;
      
      private var §@@§:Number;
      
      private var §`1§:Number;
      
      private var §]!P§:Number;
      
      private var §@!]§:Number;
      
      private var §]!x§:Boolean;
      
      private var §@&§:Boolean;
      
      private var §-!6§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§+!A§ = new b2Vec2();
         this.§6!;§ = new b2Vec2();
         this.§9u§ = new b2Vec2();
         this.§;!]§ = new b2Vec2();
         this.§`!F§ = new b2Mat22();
         this.§+!P§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§9!9§);
         this.m_localAnchor2.SetV(param1.§^G§);
         this.§+!A§.SetV(param1.§!!i§);
         this.§6!;§.x = -this.§+!A§.y;
         this.§6!;§.y = this.§+!A§.x;
         this.§+!P§.§%&§();
         this.§>y§ = 0;
         this.§#!s§ = 0;
         this.§@@§ = param1.§#!e§;
         this.§`1§ = param1.§5!y§;
         this.§]!P§ = param1.§'&§;
         this.§@!]§ = param1.motorSpeed;
         this.§]!x§ = param1.§"!8§;
         this.§@&§ = param1.§;!J§;
         this.§-!6§ = b2internal::7! ;
         this.§9u§.§%&§();
         this.§;!]§.§%&§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§+!P§.x * this.§;!]§.x + (this.§#!s§ + this.§+!P§.y) * this.§9u§.x),param1 * (this.§+!P§.x * this.§;!]§.y + (this.§#!s§ + this.§+!P§.y) * this.§9u§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§+!P§.y;
      }
      
      public function §!!Y§() : Number
      {
         var _loc1_:b2Body = b2internal::^^;
         var _loc2_:b2Body = b2internal::7!<;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§%1§(this.§+!A§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §;$§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::^^;
         var _loc2_:b2Body = b2internal::7!<;
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
         var _loc15_:b2Vec2 = _loc1_.§%1§(this.§+!A§);
         var _loc16_:b2Vec2 = _loc1_.§9!§;
         var _loc17_:b2Vec2 = _loc2_.§9!§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §9N§() : Boolean
      {
         return this.§]!x§;
      }
      
      public function §8<§(param1:Boolean) : void
      {
         b2internal::^^.SetAwake(true);
         b2internal::7!<.SetAwake(true);
         this.§]!x§ = param1;
      }
      
      public function §3!'§() : Number
      {
         return this.§@@§;
      }
      
      public function §=!9§() : Number
      {
         return this.§`1§;
      }
      
      public function §=C§(param1:Number, param2:Number) : void
      {
         b2internal::^^.SetAwake(true);
         b2internal::7!<.SetAwake(true);
         this.§@@§ = param1;
         this.§`1§ = param2;
      }
      
      public function §-!"§() : Boolean
      {
         return this.§@&§;
      }
      
      public function §?!3§(param1:Boolean) : void
      {
         b2internal::^^.SetAwake(true);
         b2internal::7!<.SetAwake(true);
         this.§@&§ = param1;
      }
      
      public function §<! §(param1:Number) : void
      {
         b2internal::^^.SetAwake(true);
         b2internal::7!<.SetAwake(true);
         this.§@!]§ = param1;
      }
      
      public function §%!4§() : Number
      {
         return this.§@!]§;
      }
      
      public function §[d§(param1:Number) : void
      {
         b2internal::^^.SetAwake(true);
         b2internal::7!<.SetAwake(true);
         this.§]!P§ = param1;
      }
      
      public function §-!k§() : Number
      {
         return this.§]!P§;
      }
      
      public function §+N§() : Number
      {
         return this.§#!s§;
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
         var _loc2_:b2Body = b2internal::^^;
         var _loc3_:b2Body = b2internal::7!<;
         b2internal::^s.SetV(_loc2_.§4!4§());
         b2internal::@!'.SetV(_loc3_.§4!4§());
         var _loc6_:b2Transform = _loc2_.§+!C§();
         var _loc7_:b2Transform = _loc3_.§+!C§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::^s.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::^s.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::@!'.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::@!'.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §8!K§ = _loc2_.§1!X§;
         §!!8§ = _loc3_.§1!X§;
         §[!=§ = _loc2_.§^!B§;
         §1&§ = _loc3_.§^!B§;
         this.§9u§.SetV(b2Math.§"!+§(_loc6_.R,this.§+!A§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§9u§.y - (_loc13_ + _loc9_) * this.§9u§.x;
         this.m_a2 = _loc10_ * this.§9u§.y - _loc11_ * this.§9u§.x;
         this.§>y§ = b2internal::8!K + b2internal::!!8 + b2internal::[!= * this.m_a1 * this.m_a1 + b2internal::1& * this.m_a2 * this.m_a2;
         this.§>y§ = this.§>y§ > Number.MIN_VALUE ? Number(1 / this.§>y§) : Number(0);
         this.§;!]§.SetV(b2Math.§"!+§(_loc6_.R,this.§6!;§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§;!]§.y - (_loc13_ + _loc9_) * this.§;!]§.x;
         this.m_s2 = _loc10_ * this.§;!]§.y - _loc11_ * this.§;!]§.x;
         var _loc14_:Number = b2internal::8!K;
         var _loc15_:Number = b2internal::!!8;
         var _loc16_:Number = b2internal::[!=;
         var _loc17_:Number = b2internal::1&;
         this.§`!F§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§`!F§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§`!F§.col2.x = this.§`!F§.col1.y;
         this.§`!F§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§]!x§)
         {
            _loc18_ = this.§9u§.x * _loc12_ + this.§9u§.y * _loc13_;
            if(b2Math.§>!Y§(this.§`1§ - this.§@@§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§-!6§ = b2internal::!>;
            }
            else if(_loc18_ <= this.§@@§)
            {
               if(this.§-!6§ != b2internal::?")
               {
                  this.§-!6§ = b2internal::?";
                  this.§+!P§.y = 0;
               }
            }
            else if(_loc18_ >= this.§`1§)
            {
               if(this.§-!6§ != b2internal:: B)
               {
                  this.§-!6§ = b2internal:: B;
                  this.§+!P§.y = 0;
               }
            }
            else
            {
               this.§-!6§ = b2internal::7! ;
               this.§+!P§.y = 0;
            }
         }
         else
         {
            this.§-!6§ = b2internal::7! ;
         }
         if(this.§@&§ == false)
         {
            this.§#!s§ = 0;
         }
         if(param1.§9!G§)
         {
            this.§+!P§.x *= param1.§&t§;
            this.§+!P§.y *= param1.§&t§;
            this.§#!s§ *= param1.§&t§;
            _loc19_ = this.§+!P§.x * this.§;!]§.x + (this.§#!s§ + this.§+!P§.y) * this.§9u§.x;
            _loc20_ = this.§+!P§.x * this.§;!]§.y + (this.§#!s§ + this.§+!P§.y) * this.§9u§.y;
            _loc21_ = this.§+!P§.x * this.m_s1 + (this.§#!s§ + this.§+!P§.y) * this.m_a1;
            _loc22_ = this.§+!P§.x * this.m_s2 + (this.§#!s§ + this.§+!P§.y) * this.m_a2;
            _loc2_.§9!§.x -= b2internal::8!K * _loc19_;
            _loc2_.§9!§.y -= b2internal::8!K * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::[!= * _loc21_;
            _loc3_.§9!§.x += b2internal::!!8 * _loc19_;
            _loc3_.§9!§.y += b2internal::!!8 * _loc20_;
            _loc3_.m_angularVelocity += b2internal::1& * _loc22_;
         }
         else
         {
            this.§+!P§.§%&§();
            this.§#!s§ = 0;
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
         var _loc2_:b2Body = b2internal::^^;
         var _loc3_:b2Body = b2internal::7!<;
         var _loc4_:b2Vec2 = _loc2_.§9!§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§9!§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§@&§ && this.§-!6§ != b2internal::!>)
         {
            _loc13_ = this.§9u§.x * (_loc6_.x - _loc4_.x) + this.§9u§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§>y§ * (this.§@!]§ - _loc13_);
            _loc15_ = this.§#!s§;
            _loc16_ = param1.§6c§ * this.§]!P§;
            this.§#!s§ = b2Math.§5L§(this.§#!s§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§#!s§ - _loc15_) * this.§9u§.x;
            _loc9_ = _loc14_ * this.§9u§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::8!K * _loc8_;
            _loc4_.y -= b2internal::8!K * _loc9_;
            _loc5_ -= b2internal::[!= * _loc10_;
            _loc6_.x += b2internal::!!8 * _loc8_;
            _loc6_.y += b2internal::!!8 * _loc9_;
            _loc7_ += b2internal::1& * _loc11_;
         }
         var _loc12_:Number = this.§;!]§.x * (_loc6_.x - _loc4_.x) + this.§;!]§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§]!x§ && this.§-!6§ != b2internal::7! )
         {
            _loc17_ = this.§9u§.x * (_loc6_.x - _loc4_.x) + this.§9u§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§+!P§.Copy();
            _loc19_ = this.§`!F§.§[!T§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§+!P§.§[!C§(_loc19_);
            if(this.§-!6§ == b2internal::?")
            {
               this.§+!P§.y = b2Math.§ 9§(this.§+!P§.y,0);
            }
            else if(this.§-!6§ == b2internal:: B)
            {
               this.§+!P§.y = b2Math.§^!n§(this.§+!P§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§+!P§.y - _loc18_.y) * this.§`!F§.col2.x;
            if(this.§`!F§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§`!F§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§+!P§.x = _loc21_;
            _loc19_.x = this.§+!P§.x - _loc18_.x;
            _loc19_.y = this.§+!P§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§;!]§.x + _loc19_.y * this.§9u§.x;
            _loc9_ = _loc19_.x * this.§;!]§.y + _loc19_.y * this.§9u§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::8!K * _loc8_;
            _loc4_.y -= b2internal::8!K * _loc9_;
            _loc5_ -= b2internal::[!= * _loc10_;
            _loc6_.x += b2internal::!!8 * _loc8_;
            _loc6_.y += b2internal::!!8 * _loc9_;
            _loc7_ += b2internal::1& * _loc11_;
         }
         else
         {
            if(this.§`!F§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§`!F§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§+!P§.x += _loc22_;
            _loc8_ = _loc22_ * this.§;!]§.x;
            _loc9_ = _loc22_ * this.§;!]§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::8!K * _loc8_;
            _loc4_.y -= b2internal::8!K * _loc9_;
            _loc5_ -= b2internal::[!= * _loc10_;
            _loc6_.x += b2internal::!!8 * _loc8_;
            _loc6_.y += b2internal::!!8 * _loc9_;
            _loc7_ += b2internal::1& * _loc11_;
         }
         _loc2_.§9!§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§9!§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::^^;
         var _loc5_:b2Body = b2internal::7!<;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§'7§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§'7§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::^s.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::^s.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::@!'.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::@!'.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§]!x§)
         {
            this.§9u§ = b2Math.§"!+§(_loc20_,this.§+!A§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§9u§.y - (_loc27_ + _loc23_) * this.§9u§.x;
            this.m_a2 = _loc24_ * this.§9u§.y - _loc25_ * this.§9u§.x;
            _loc34_ = this.§9u§.x * _loc26_ + this.§9u§.y * _loc27_;
            if(b2Math.§>!Y§(this.§`1§ - this.§@@§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§5L§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§>!Y§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§@@§)
            {
               _loc19_ = b2Math.§5L§(_loc34_ - this.§@@§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§@@§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§`1§)
            {
               _loc19_ = b2Math.§5L§(_loc34_ - this.§`1§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§`1§;
               _loc18_ = true;
            }
         }
         this.§;!]§ = b2Math.§"!+§(_loc20_,this.§6!;§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§;!]§.y - (_loc27_ + _loc23_) * this.§;!]§.x;
         this.m_s2 = _loc24_ * this.§;!]§.y - _loc25_ * this.§;!]§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§;!]§.x * _loc26_ + this.§;!]§.y * _loc27_;
         _loc16_ = b2Math.§ 9§(_loc16_,b2Math.§>!Y§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::8!K;
            _loc13_ = b2internal::!!8;
            _loc14_ = b2internal::[!=;
            _loc15_ = b2internal::1&;
            this.§`!F§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§`!F§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§`!F§.col2.x = this.§`!F§.col1.y;
            this.§`!F§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§`!F§.§[!T§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::8!K;
            _loc13_ = b2internal::!!8;
            _loc14_ = b2internal::[!=;
            _loc15_ = b2internal::1&;
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
         var _loc30_:Number = _loc28_.x * this.§;!]§.x + _loc28_.y * this.§9u§.x;
         var _loc31_:Number = _loc28_.x * this.§;!]§.y + _loc28_.y * this.§9u§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::8!K * _loc30_;
         _loc6_.y -= b2internal::8!K * _loc31_;
         _loc7_ -= b2internal::[!= * _loc32_;
         _loc8_.x += b2internal::!!8 * _loc30_;
         _loc8_.y += b2internal::!!8 * _loc31_;
         _loc9_ += b2internal::1& * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§ n§();
         _loc5_.§ n§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
