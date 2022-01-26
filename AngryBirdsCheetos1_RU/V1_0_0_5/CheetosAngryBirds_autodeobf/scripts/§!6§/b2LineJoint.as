package §!6§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §+,§.b2Mat22;
   import §+,§.b2Math;
   import §+,§.b2Transform;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   import §[W§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9!Z§:b2Vec2;
      
      private var §^3§:b2Vec2;
      
      private var §%'§:b2Vec2;
      
      private var §8!I§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §4!S§:b2Mat22;
      
      private var §;!B§:b2Vec2;
      
      private var §]!#§:Number;
      
      private var §'!S§:Number;
      
      private var §@T§:Number;
      
      private var §8C§:Number;
      
      private var §6!X§:Number;
      
      private var §%c§:Number;
      
      private var §0!&§:Boolean;
      
      private var §%=§:Boolean;
      
      private var §4!W§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9!Z§ = new b2Vec2();
         this.§^3§ = new b2Vec2();
         this.§%'§ = new b2Vec2();
         this.§8!I§ = new b2Vec2();
         this.§4!S§ = new b2Mat22();
         this.§;!B§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§2f§);
         this.m_localAnchor2.SetV(param1.§@n§);
         this.§9!Z§.SetV(param1.§9I§);
         this.§^3§.x = -this.§9!Z§.y;
         this.§^3§.y = this.§9!Z§.x;
         this.§;!B§.§&N§();
         this.§]!#§ = 0;
         this.§'!S§ = 0;
         this.§@T§ = param1.§,X§;
         this.§8C§ = param1.§>!`§;
         this.§6!X§ = param1.§'!R§;
         this.§%c§ = param1.motorSpeed;
         this.§0!&§ = param1.§9o§;
         this.§%=§ = param1.§=!;§;
         this.§4!W§ = b2internal::@D;
         this.§%'§.§&N§();
         this.§8!I§.§&N§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#4.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§;!B§.x * this.§8!I§.x + (this.§'!S§ + this.§;!B§.y) * this.§%'§.x),param1 * (this.§;!B§.x * this.§8!I§.y + (this.§'!S§ + this.§;!B§.y) * this.§%'§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;!B§.y;
      }
      
      public function §2?§() : Number
      {
         var _loc1_:b2Body = b2internal::#4;
         var _loc2_:b2Body = b2internal::-!`;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§4P§(this.§9!Z§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §?!X§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::#4;
         var _loc2_:b2Body = b2internal::-!`;
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
         var _loc15_:b2Vec2 = _loc1_.§4P§(this.§9!Z§);
         var _loc16_:b2Vec2 = _loc1_.§%!N§;
         var _loc17_:b2Vec2 = _loc2_.§%!N§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §#!#§() : Boolean
      {
         return this.§0!&§;
      }
      
      public function §?a§(param1:Boolean) : void
      {
         b2internal::#4.SetAwake(true);
         b2internal::-!`.SetAwake(true);
         this.§0!&§ = param1;
      }
      
      public function §[^§() : Number
      {
         return this.§@T§;
      }
      
      public function §%!#§() : Number
      {
         return this.§8C§;
      }
      
      public function §`0§(param1:Number, param2:Number) : void
      {
         b2internal::#4.SetAwake(true);
         b2internal::-!`.SetAwake(true);
         this.§@T§ = param1;
         this.§8C§ = param2;
      }
      
      public function §4h§() : Boolean
      {
         return this.§%=§;
      }
      
      public function §4!M§(param1:Boolean) : void
      {
         b2internal::#4.SetAwake(true);
         b2internal::-!`.SetAwake(true);
         this.§%=§ = param1;
      }
      
      public function §9!E§(param1:Number) : void
      {
         b2internal::#4.SetAwake(true);
         b2internal::-!`.SetAwake(true);
         this.§%c§ = param1;
      }
      
      public function §#!9§() : Number
      {
         return this.§%c§;
      }
      
      public function §`!=§(param1:Number) : void
      {
         b2internal::#4.SetAwake(true);
         b2internal::-!`.SetAwake(true);
         this.§6!X§ = param1;
      }
      
      public function §[!9§() : Number
      {
         return this.§6!X§;
      }
      
      public function §#!Y§() : Number
      {
         return this.§'!S§;
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
         var _loc2_:b2Body = b2internal::#4;
         var _loc3_:b2Body = b2internal::-!`;
         b2internal::3!2.SetV(_loc2_.§;!R§());
         b2internal::#!U.SetV(_loc3_.§;!R§());
         var _loc6_:b2Transform = _loc2_.§@#§();
         var _loc7_:b2Transform = _loc3_.§@#§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::3!2.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::3!2.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::#!U.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::#!U.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §1!^§ = _loc2_.§^!^§;
         §7[§ = _loc3_.§^!^§;
         §2!T§ = _loc2_.§^U§;
         §8!X§ = _loc3_.§^U§;
         this.§%'§.SetV(b2Math.§#N§(_loc6_.R,this.§9!Z§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§%'§.y - (_loc13_ + _loc9_) * this.§%'§.x;
         this.m_a2 = _loc10_ * this.§%'§.y - _loc11_ * this.§%'§.x;
         this.§]!#§ = b2internal::1!^ + b2internal::7[ + b2internal::2!T * this.m_a1 * this.m_a1 + b2internal::8!X * this.m_a2 * this.m_a2;
         this.§]!#§ = this.§]!#§ > Number.MIN_VALUE ? Number(1 / this.§]!#§) : Number(0);
         this.§8!I§.SetV(b2Math.§#N§(_loc6_.R,this.§^3§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§8!I§.y - (_loc13_ + _loc9_) * this.§8!I§.x;
         this.m_s2 = _loc10_ * this.§8!I§.y - _loc11_ * this.§8!I§.x;
         var _loc14_:Number = b2internal::1!^;
         var _loc15_:Number = b2internal::7[;
         var _loc16_:Number = b2internal::2!T;
         var _loc17_:Number = b2internal::8!X;
         this.§4!S§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§4!S§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§4!S§.col2.x = this.§4!S§.col1.y;
         this.§4!S§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§0!&§)
         {
            _loc18_ = this.§%'§.x * _loc12_ + this.§%'§.y * _loc13_;
            if(b2Math.§=1§(this.§8C§ - this.§@T§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§4!W§ = b2internal::4!O;
            }
            else if(_loc18_ <= this.§@T§)
            {
               if(this.§4!W§ != b2internal::3!L)
               {
                  this.§4!W§ = b2internal::3!L;
                  this.§;!B§.y = 0;
               }
            }
            else if(_loc18_ >= this.§8C§)
            {
               if(this.§4!W§ != b2internal::#2)
               {
                  this.§4!W§ = b2internal::#2;
                  this.§;!B§.y = 0;
               }
            }
            else
            {
               this.§4!W§ = b2internal::@D;
               this.§;!B§.y = 0;
            }
         }
         else
         {
            this.§4!W§ = b2internal::@D;
         }
         if(this.§%=§ == false)
         {
            this.§'!S§ = 0;
         }
         if(param1.§'K§)
         {
            this.§;!B§.x *= param1.§0O§;
            this.§;!B§.y *= param1.§0O§;
            this.§'!S§ *= param1.§0O§;
            _loc19_ = this.§;!B§.x * this.§8!I§.x + (this.§'!S§ + this.§;!B§.y) * this.§%'§.x;
            _loc20_ = this.§;!B§.x * this.§8!I§.y + (this.§'!S§ + this.§;!B§.y) * this.§%'§.y;
            _loc21_ = this.§;!B§.x * this.m_s1 + (this.§'!S§ + this.§;!B§.y) * this.m_a1;
            _loc22_ = this.§;!B§.x * this.m_s2 + (this.§'!S§ + this.§;!B§.y) * this.m_a2;
            _loc2_.§%!N§.x -= b2internal::1!^ * _loc19_;
            _loc2_.§%!N§.y -= b2internal::1!^ * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::2!T * _loc21_;
            _loc3_.§%!N§.x += b2internal::7[ * _loc19_;
            _loc3_.§%!N§.y += b2internal::7[ * _loc20_;
            _loc3_.m_angularVelocity += b2internal::8!X * _loc22_;
         }
         else
         {
            this.§;!B§.§&N§();
            this.§'!S§ = 0;
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
         var _loc2_:b2Body = b2internal::#4;
         var _loc3_:b2Body = b2internal::-!`;
         var _loc4_:b2Vec2 = _loc2_.§%!N§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§%!N§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§%=§ && this.§4!W§ != b2internal::4!O)
         {
            _loc13_ = this.§%'§.x * (_loc6_.x - _loc4_.x) + this.§%'§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§]!#§ * (this.§%c§ - _loc13_);
            _loc15_ = this.§'!S§;
            _loc16_ = param1.§=S§ * this.§6!X§;
            this.§'!S§ = b2Math.§ !`§(this.§'!S§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§'!S§ - _loc15_) * this.§%'§.x;
            _loc9_ = _loc14_ * this.§%'§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::1!^ * _loc8_;
            _loc4_.y -= b2internal::1!^ * _loc9_;
            _loc5_ -= b2internal::2!T * _loc10_;
            _loc6_.x += b2internal::7[ * _loc8_;
            _loc6_.y += b2internal::7[ * _loc9_;
            _loc7_ += b2internal::8!X * _loc11_;
         }
         var _loc12_:Number = this.§8!I§.x * (_loc6_.x - _loc4_.x) + this.§8!I§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§0!&§ && this.§4!W§ != b2internal::@D)
         {
            _loc17_ = this.§%'§.x * (_loc6_.x - _loc4_.x) + this.§%'§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§;!B§.Copy();
            _loc19_ = this.§4!S§.§%!?§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§;!B§.§-!L§(_loc19_);
            if(this.§4!W§ == b2internal::3!L)
            {
               this.§;!B§.y = b2Math.§]!Z§(this.§;!B§.y,0);
            }
            else if(this.§4!W§ == b2internal::#2)
            {
               this.§;!B§.y = b2Math.§>! §(this.§;!B§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§;!B§.y - _loc18_.y) * this.§4!S§.col2.x;
            if(this.§4!S§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§4!S§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§;!B§.x = _loc21_;
            _loc19_.x = this.§;!B§.x - _loc18_.x;
            _loc19_.y = this.§;!B§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§8!I§.x + _loc19_.y * this.§%'§.x;
            _loc9_ = _loc19_.x * this.§8!I§.y + _loc19_.y * this.§%'§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::1!^ * _loc8_;
            _loc4_.y -= b2internal::1!^ * _loc9_;
            _loc5_ -= b2internal::2!T * _loc10_;
            _loc6_.x += b2internal::7[ * _loc8_;
            _loc6_.y += b2internal::7[ * _loc9_;
            _loc7_ += b2internal::8!X * _loc11_;
         }
         else
         {
            if(this.§4!S§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§4!S§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§;!B§.x += _loc22_;
            _loc8_ = _loc22_ * this.§8!I§.x;
            _loc9_ = _loc22_ * this.§8!I§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::1!^ * _loc8_;
            _loc4_.y -= b2internal::1!^ * _loc9_;
            _loc5_ -= b2internal::2!T * _loc10_;
            _loc6_.x += b2internal::7[ * _loc8_;
            _loc6_.y += b2internal::7[ * _loc9_;
            _loc7_ += b2internal::8!X * _loc11_;
         }
         _loc2_.§%!N§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§%!N§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::#4;
         var _loc5_:b2Body = b2internal::-!`;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§2!6§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§2!6§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::3!2.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::3!2.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::#!U.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::#!U.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§0!&§)
         {
            this.§%'§ = b2Math.§#N§(_loc20_,this.§9!Z§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§%'§.y - (_loc27_ + _loc23_) * this.§%'§.x;
            this.m_a2 = _loc24_ * this.§%'§.y - _loc25_ * this.§%'§.x;
            _loc34_ = this.§%'§.x * _loc26_ + this.§%'§.y * _loc27_;
            if(b2Math.§=1§(this.§8C§ - this.§@T§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§ !`§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§=1§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§@T§)
            {
               _loc19_ = b2Math.§ !`§(_loc34_ - this.§@T§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§@T§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§8C§)
            {
               _loc19_ = b2Math.§ !`§(_loc34_ - this.§8C§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§8C§;
               _loc18_ = true;
            }
         }
         this.§8!I§ = b2Math.§#N§(_loc20_,this.§^3§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§8!I§.y - (_loc27_ + _loc23_) * this.§8!I§.x;
         this.m_s2 = _loc24_ * this.§8!I§.y - _loc25_ * this.§8!I§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§8!I§.x * _loc26_ + this.§8!I§.y * _loc27_;
         _loc16_ = b2Math.§]!Z§(_loc16_,b2Math.§=1§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::1!^;
            _loc13_ = b2internal::7[;
            _loc14_ = b2internal::2!T;
            _loc15_ = b2internal::8!X;
            this.§4!S§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§4!S§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§4!S§.col2.x = this.§4!S§.col1.y;
            this.§4!S§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§4!S§.§%!?§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::1!^;
            _loc13_ = b2internal::7[;
            _loc14_ = b2internal::2!T;
            _loc15_ = b2internal::8!X;
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
         var _loc30_:Number = _loc28_.x * this.§8!I§.x + _loc28_.y * this.§%'§.x;
         var _loc31_:Number = _loc28_.x * this.§8!I§.y + _loc28_.y * this.§%'§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::1!^ * _loc30_;
         _loc6_.y -= b2internal::1!^ * _loc31_;
         _loc7_ -= b2internal::2!T * _loc32_;
         _loc8_.x += b2internal::7[ * _loc30_;
         _loc8_.y += b2internal::7[ * _loc31_;
         _loc9_ += b2internal::8!X * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§'!N§();
         _loc5_.§'!N§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
