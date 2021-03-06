package §^!2§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §?!h§.b2Mat22;
   import §?!h§.b2Math;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   import §`]§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0#§:b2Vec2;
      
      private var §8!`§:b2Vec2;
      
      private var §%9§:b2Vec2;
      
      private var §,6§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §"c§:b2Mat22;
      
      private var §3!%§:b2Vec2;
      
      private var §0,§:Number;
      
      private var §3§:Number;
      
      private var §"!L§:Number;
      
      private var §1b§:Number;
      
      private var §0W§:Number;
      
      private var §-r§:Number;
      
      private var §9Z§:Boolean;
      
      private var §+'§:Boolean;
      
      private var §77§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0#§ = new b2Vec2();
         this.§8!`§ = new b2Vec2();
         this.§%9§ = new b2Vec2();
         this.§,6§ = new b2Vec2();
         this.§"c§ = new b2Mat22();
         this.§3!%§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§9"%§);
         this.m_localAnchor2.SetV(param1.§^j§);
         this.§0#§.SetV(param1.§ "8§);
         this.§8!`§.x = -this.§0#§.y;
         this.§8!`§.y = this.§0#§.x;
         this.§3!%§.§+Z§();
         this.§0,§ = 0;
         this.§3§ = 0;
         this.§"!L§ = param1.§]T§;
         this.§1b§ = param1.§^!,§;
         this.§0W§ = param1.§>!N§;
         this.§-r§ = param1.motorSpeed;
         this.§9Z§ = param1.§2!Z§;
         this.§+'§ = param1.§"z§;
         this.§77§ = b2internal::"S;
         this.§%9§.§+Z§();
         this.§,6§.§+Z§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5'.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!&.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§3!%§.x * this.§,6§.x + (this.§3§ + this.§3!%§.y) * this.§%9§.x),param1 * (this.§3!%§.x * this.§,6§.y + (this.§3§ + this.§3!%§.y) * this.§%9§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§3!%§.y;
      }
      
      public function §&W§() : Number
      {
         var _loc1_:b2Body = b2internal::5';
         var _loc2_:b2Body = b2internal::?!&;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§8!^§(this.§0#§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §6"1§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::5';
         var _loc2_:b2Body = b2internal::?!&;
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
         var _loc15_:b2Vec2 = _loc1_.§8!^§(this.§0#§);
         var _loc16_:b2Vec2 = _loc1_.§#!S§;
         var _loc17_:b2Vec2 = _loc2_.§#!S§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §7h§() : Boolean
      {
         return this.§9Z§;
      }
      
      public function §4T§(param1:Boolean) : void
      {
         b2internal::5'.SetAwake(true);
         b2internal::?!&.SetAwake(true);
         this.§9Z§ = param1;
      }
      
      public function §5d§() : Number
      {
         return this.§"!L§;
      }
      
      public function §"R§() : Number
      {
         return this.§1b§;
      }
      
      public function §8!R§(param1:Number, param2:Number) : void
      {
         b2internal::5'.SetAwake(true);
         b2internal::?!&.SetAwake(true);
         this.§"!L§ = param1;
         this.§1b§ = param2;
      }
      
      public function §1!t§() : Boolean
      {
         return this.§+'§;
      }
      
      public function §6!g§(param1:Boolean) : void
      {
         b2internal::5'.SetAwake(true);
         b2internal::?!&.SetAwake(true);
         this.§+'§ = param1;
      }
      
      public function §;d§(param1:Number) : void
      {
         b2internal::5'.SetAwake(true);
         b2internal::?!&.SetAwake(true);
         this.§-r§ = param1;
      }
      
      public function §'L§() : Number
      {
         return this.§-r§;
      }
      
      public function §0"2§(param1:Number) : void
      {
         b2internal::5'.SetAwake(true);
         b2internal::?!&.SetAwake(true);
         this.§0W§ = param1;
      }
      
      public function §>"5§() : Number
      {
         return this.§0W§;
      }
      
      public function §=! §() : Number
      {
         return this.§3§;
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
         var _loc2_:b2Body = b2internal::5';
         var _loc3_:b2Body = b2internal::?!&;
         b2internal::&T.SetV(_loc2_.§4!d§());
         b2internal::=N.SetV(_loc3_.§4!d§());
         var _loc6_:b2Transform = _loc2_.§!!f§();
         var _loc7_:b2Transform = _loc3_.§!!f§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::&T.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::&T.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::=N.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::=N.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §1!7§ = _loc2_.§+w§;
         §2!#§ = _loc3_.§+w§;
         §"n§ = _loc2_.§-A§;
         §;M§ = _loc3_.§-A§;
         this.§%9§.SetV(b2Math.§"p§(_loc6_.R,this.§0#§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§%9§.y - (_loc13_ + _loc9_) * this.§%9§.x;
         this.m_a2 = _loc10_ * this.§%9§.y - _loc11_ * this.§%9§.x;
         this.§0,§ = b2internal::1!7 + b2internal::2!# + b2internal::"n * this.m_a1 * this.m_a1 + b2internal::;M * this.m_a2 * this.m_a2;
         this.§0,§ = this.§0,§ > Number.MIN_VALUE ? Number(1 / this.§0,§) : Number(0);
         this.§,6§.SetV(b2Math.§"p§(_loc6_.R,this.§8!`§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§,6§.y - (_loc13_ + _loc9_) * this.§,6§.x;
         this.m_s2 = _loc10_ * this.§,6§.y - _loc11_ * this.§,6§.x;
         var _loc14_:Number = b2internal::1!7;
         var _loc15_:Number = b2internal::2!#;
         var _loc16_:Number = b2internal::"n;
         var _loc17_:Number = b2internal::;M;
         this.§"c§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§"c§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§"c§.col2.x = this.§"c§.col1.y;
         this.§"c§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§9Z§)
         {
            _loc18_ = this.§%9§.x * _loc12_ + this.§%9§.y * _loc13_;
            if(b2Math.§get §(this.§1b§ - this.§"!L§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§77§ = b2internal::"!9;
            }
            else if(_loc18_ <= this.§"!L§)
            {
               if(this.§77§ != b2internal::4d)
               {
                  this.§77§ = b2internal::4d;
                  this.§3!%§.y = 0;
               }
            }
            else if(_loc18_ >= this.§1b§)
            {
               if(this.§77§ != b2internal::>!^)
               {
                  this.§77§ = b2internal::>!^;
                  this.§3!%§.y = 0;
               }
            }
            else
            {
               this.§77§ = b2internal::"S;
               this.§3!%§.y = 0;
            }
         }
         else
         {
            this.§77§ = b2internal::"S;
         }
         if(this.§+'§ == false)
         {
            this.§3§ = 0;
         }
         if(param1.§@!-§)
         {
            this.§3!%§.x *= param1.§]"5§;
            this.§3!%§.y *= param1.§]"5§;
            this.§3§ *= param1.§]"5§;
            _loc19_ = this.§3!%§.x * this.§,6§.x + (this.§3§ + this.§3!%§.y) * this.§%9§.x;
            _loc20_ = this.§3!%§.x * this.§,6§.y + (this.§3§ + this.§3!%§.y) * this.§%9§.y;
            _loc21_ = this.§3!%§.x * this.m_s1 + (this.§3§ + this.§3!%§.y) * this.m_a1;
            _loc22_ = this.§3!%§.x * this.m_s2 + (this.§3§ + this.§3!%§.y) * this.m_a2;
            _loc2_.§#!S§.x -= b2internal::1!7 * _loc19_;
            _loc2_.§#!S§.y -= b2internal::1!7 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::"n * _loc21_;
            _loc3_.§#!S§.x += b2internal::2!# * _loc19_;
            _loc3_.§#!S§.y += b2internal::2!# * _loc20_;
            _loc3_.m_angularVelocity += b2internal::;M * _loc22_;
         }
         else
         {
            this.§3!%§.§+Z§();
            this.§3§ = 0;
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
         var _loc2_:b2Body = b2internal::5';
         var _loc3_:b2Body = b2internal::?!&;
         var _loc4_:b2Vec2 = _loc2_.§#!S§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§#!S§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§+'§ && this.§77§ != b2internal::"!9)
         {
            _loc13_ = this.§%9§.x * (_loc6_.x - _loc4_.x) + this.§%9§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§0,§ * (this.§-r§ - _loc13_);
            _loc15_ = this.§3§;
            _loc16_ = param1.§7"2§ * this.§0W§;
            this.§3§ = b2Math.§9!n§(this.§3§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§3§ - _loc15_) * this.§%9§.x;
            _loc9_ = _loc14_ * this.§%9§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::1!7 * _loc8_;
            _loc4_.y -= b2internal::1!7 * _loc9_;
            _loc5_ -= b2internal::"n * _loc10_;
            _loc6_.x += b2internal::2!# * _loc8_;
            _loc6_.y += b2internal::2!# * _loc9_;
            _loc7_ += b2internal::;M * _loc11_;
         }
         var _loc12_:Number = this.§,6§.x * (_loc6_.x - _loc4_.x) + this.§,6§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§9Z§ && this.§77§ != b2internal::"S)
         {
            _loc17_ = this.§%9§.x * (_loc6_.x - _loc4_.x) + this.§%9§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§3!%§.Copy();
            _loc19_ = this.§"c§.§8",§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§3!%§.§'!K§(_loc19_);
            if(this.§77§ == b2internal::4d)
            {
               this.§3!%§.y = b2Math.§!&§(this.§3!%§.y,0);
            }
            else if(this.§77§ == b2internal::>!^)
            {
               this.§3!%§.y = b2Math.§]§(this.§3!%§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§3!%§.y - _loc18_.y) * this.§"c§.col2.x;
            if(this.§"c§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§"c§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§3!%§.x = _loc21_;
            _loc19_.x = this.§3!%§.x - _loc18_.x;
            _loc19_.y = this.§3!%§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§,6§.x + _loc19_.y * this.§%9§.x;
            _loc9_ = _loc19_.x * this.§,6§.y + _loc19_.y * this.§%9§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::1!7 * _loc8_;
            _loc4_.y -= b2internal::1!7 * _loc9_;
            _loc5_ -= b2internal::"n * _loc10_;
            _loc6_.x += b2internal::2!# * _loc8_;
            _loc6_.y += b2internal::2!# * _loc9_;
            _loc7_ += b2internal::;M * _loc11_;
         }
         else
         {
            if(this.§"c§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§"c§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§3!%§.x += _loc22_;
            _loc8_ = _loc22_ * this.§,6§.x;
            _loc9_ = _loc22_ * this.§,6§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::1!7 * _loc8_;
            _loc4_.y -= b2internal::1!7 * _loc9_;
            _loc5_ -= b2internal::"n * _loc10_;
            _loc6_.x += b2internal::2!# * _loc8_;
            _loc6_.y += b2internal::2!# * _loc9_;
            _loc7_ += b2internal::;M * _loc11_;
         }
         _loc2_.§#!S§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§#!S§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::5';
         var _loc5_:b2Body = b2internal::?!&;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§]!n§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§]!n§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::&T.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::&T.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::=N.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::=N.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§9Z§)
         {
            this.§%9§ = b2Math.§"p§(_loc20_,this.§0#§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§%9§.y - (_loc27_ + _loc23_) * this.§%9§.x;
            this.m_a2 = _loc24_ * this.§%9§.y - _loc25_ * this.§%9§.x;
            _loc34_ = this.§%9§.x * _loc26_ + this.§%9§.y * _loc27_;
            if(b2Math.§get §(this.§1b§ - this.§"!L§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§9!n§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§get §(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§"!L§)
            {
               _loc19_ = b2Math.§9!n§(_loc34_ - this.§"!L§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§"!L§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§1b§)
            {
               _loc19_ = b2Math.§9!n§(_loc34_ - this.§1b§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§1b§;
               _loc18_ = true;
            }
         }
         this.§,6§ = b2Math.§"p§(_loc20_,this.§8!`§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§,6§.y - (_loc27_ + _loc23_) * this.§,6§.x;
         this.m_s2 = _loc24_ * this.§,6§.y - _loc25_ * this.§,6§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§,6§.x * _loc26_ + this.§,6§.y * _loc27_;
         _loc16_ = b2Math.§!&§(_loc16_,b2Math.§get §(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::1!7;
            _loc13_ = b2internal::2!#;
            _loc14_ = b2internal::"n;
            _loc15_ = b2internal::;M;
            this.§"c§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§"c§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§"c§.col2.x = this.§"c§.col1.y;
            this.§"c§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§"c§.§8",§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::1!7;
            _loc13_ = b2internal::2!#;
            _loc14_ = b2internal::"n;
            _loc15_ = b2internal::;M;
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
         var _loc30_:Number = _loc28_.x * this.§,6§.x + _loc28_.y * this.§%9§.x;
         var _loc31_:Number = _loc28_.x * this.§,6§.y + _loc28_.y * this.§%9§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::1!7 * _loc30_;
         _loc6_.y -= b2internal::1!7 * _loc31_;
         _loc7_ -= b2internal::"n * _loc32_;
         _loc8_.x += b2internal::2!# * _loc30_;
         _loc8_.y += b2internal::2!# * _loc31_;
         _loc9_ += b2internal::;M * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§^&§();
         _loc5_.§^&§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
