package §7!3§
{
   import §+d§.b2Body;
   import §+d§.b2TimeStep;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §`!^§.b2Mat22;
   import §`!^§.b2Math;
   import §`!^§.b2Transform;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0r§:b2Vec2;
      
      private var §6E§:b2Vec2;
      
      private var §<Z§:b2Vec2;
      
      private var §^!&§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §'Q§:b2Mat22;
      
      private var §[H§:b2Vec2;
      
      private var §0`§:Number;
      
      private var §@"§:Number;
      
      private var §4u§:Number;
      
      private var §["§:Number;
      
      private var § var§:Number;
      
      private var §#d§:Number;
      
      private var §]<§:Boolean;
      
      private var § !K§:Boolean;
      
      private var §2!a§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0r§ = new b2Vec2();
         this.§6E§ = new b2Vec2();
         this.§<Z§ = new b2Vec2();
         this.§^!&§ = new b2Vec2();
         this.§'Q§ = new b2Mat22();
         this.§[H§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ 3§);
         this.m_localAnchor2.SetV(param1.§&!-§);
         this.§0r§.SetV(param1.§^[§);
         this.§6E§.x = -this.§0r§.y;
         this.§6E§.y = this.§0r§.x;
         this.§[H§.§8c§();
         this.§0`§ = 0;
         this.§@"§ = 0;
         this.§4u§ = param1.§ M§;
         this.§["§ = param1.§;9§;
         this.§ var§ = param1.§2=§;
         this.§#d§ = param1.motorSpeed;
         this.§]<§ = param1.§5;§;
         this.§ !K§ = param1.§`[§;
         this.§2!a§ = b2internal::2!h;
         this.§<Z§.§8c§();
         this.§^!&§.§8c§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5!R.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::>D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§[H§.x * this.§^!&§.x + (this.§@"§ + this.§[H§.y) * this.§<Z§.x),param1 * (this.§[H§.x * this.§^!&§.y + (this.§@"§ + this.§[H§.y) * this.§<Z§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[H§.y;
      }
      
      public function include() : Number
      {
         var _loc1_:b2Body = b2internal::5!R;
         var _loc2_:b2Body = b2internal::>D;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§-c§(this.§0r§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §?!6§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::5!R;
         var _loc2_:b2Body = b2internal::>D;
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
         var _loc15_:b2Vec2 = _loc1_.§-c§(this.§0r§);
         var _loc16_:b2Vec2 = _loc1_.§^!S§;
         var _loc17_:b2Vec2 = _loc2_.§^!S§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §!!c§() : Boolean
      {
         return this.§]<§;
      }
      
      public function §-g§(param1:Boolean) : void
      {
         b2internal::5!R.SetAwake(true);
         b2internal::>D.SetAwake(true);
         this.§]<§ = param1;
      }
      
      public function §3A§() : Number
      {
         return this.§4u§;
      }
      
      public function §?!T§() : Number
      {
         return this.§["§;
      }
      
      public function §+!$§(param1:Number, param2:Number) : void
      {
         b2internal::5!R.SetAwake(true);
         b2internal::>D.SetAwake(true);
         this.§4u§ = param1;
         this.§["§ = param2;
      }
      
      public function §null§() : Boolean
      {
         return this.§ !K§;
      }
      
      public function §7]§(param1:Boolean) : void
      {
         b2internal::5!R.SetAwake(true);
         b2internal::>D.SetAwake(true);
         this.§ !K§ = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::5!R.SetAwake(true);
         b2internal::>D.SetAwake(true);
         this.§#d§ = param1;
      }
      
      public function §?I§() : Number
      {
         return this.§#d§;
      }
      
      public function §`'§(param1:Number) : void
      {
         b2internal::5!R.SetAwake(true);
         b2internal::>D.SetAwake(true);
         this.§ var§ = param1;
      }
      
      public function § D§() : Number
      {
         return this.§ var§;
      }
      
      public function §-]§() : Number
      {
         return this.§@"§;
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
         var _loc2_:b2Body = b2internal::5!R;
         var _loc3_:b2Body = b2internal::>D;
         b2internal::=[.SetV(_loc2_.§8p§());
         b2internal::[V.SetV(_loc3_.§8p§());
         var _loc6_:b2Transform = _loc2_.§3!d§();
         var _loc7_:b2Transform = _loc3_.§3!d§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::=[.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::=[.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::[V.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::[V.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §9g§ = _loc2_.§@h§;
         §#t§ = _loc3_.§@h§;
         §%!S§ = _loc2_.§8t§;
         §2e§ = _loc3_.§8t§;
         this.§<Z§.SetV(b2Math.§]!I§(_loc6_.R,this.§0r§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§<Z§.y - (_loc13_ + _loc9_) * this.§<Z§.x;
         this.m_a2 = _loc10_ * this.§<Z§.y - _loc11_ * this.§<Z§.x;
         this.§0`§ = b2internal::9g + b2internal::#t + b2internal::%!S * this.m_a1 * this.m_a1 + b2internal::2e * this.m_a2 * this.m_a2;
         this.§0`§ = this.§0`§ > Number.MIN_VALUE ? Number(1 / this.§0`§) : Number(0);
         this.§^!&§.SetV(b2Math.§]!I§(_loc6_.R,this.§6E§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§^!&§.y - (_loc13_ + _loc9_) * this.§^!&§.x;
         this.m_s2 = _loc10_ * this.§^!&§.y - _loc11_ * this.§^!&§.x;
         var _loc14_:Number = b2internal::9g;
         var _loc15_:Number = b2internal::#t;
         var _loc16_:Number = b2internal::%!S;
         var _loc17_:Number = b2internal::2e;
         this.§'Q§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§'Q§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§'Q§.col2.x = this.§'Q§.col1.y;
         this.§'Q§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§]<§)
         {
            _loc18_ = this.§<Z§.x * _loc12_ + this.§<Z§.y * _loc13_;
            if(b2Math.§6!L§(this.§["§ - this.§4u§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§2!a§ = b2internal::55;
            }
            else if(_loc18_ <= this.§4u§)
            {
               if(this.§2!a§ != b2internal::4;)
               {
                  this.§2!a§ = b2internal::4;;
                  this.§[H§.y = 0;
               }
            }
            else if(_loc18_ >= this.§["§)
            {
               if(this.§2!a§ != b2internal::^!_)
               {
                  this.§2!a§ = b2internal::^!_;
                  this.§[H§.y = 0;
               }
            }
            else
            {
               this.§2!a§ = b2internal::2!h;
               this.§[H§.y = 0;
            }
         }
         else
         {
            this.§2!a§ = b2internal::2!h;
         }
         if(this.§ !K§ == false)
         {
            this.§@"§ = 0;
         }
         if(param1.§`!;§)
         {
            this.§[H§.x *= param1.§"§;
            this.§[H§.y *= param1.§"§;
            this.§@"§ *= param1.§"§;
            _loc19_ = this.§[H§.x * this.§^!&§.x + (this.§@"§ + this.§[H§.y) * this.§<Z§.x;
            _loc20_ = this.§[H§.x * this.§^!&§.y + (this.§@"§ + this.§[H§.y) * this.§<Z§.y;
            _loc21_ = this.§[H§.x * this.m_s1 + (this.§@"§ + this.§[H§.y) * this.m_a1;
            _loc22_ = this.§[H§.x * this.m_s2 + (this.§@"§ + this.§[H§.y) * this.m_a2;
            _loc2_.§^!S§.x -= b2internal::9g * _loc19_;
            _loc2_.§^!S§.y -= b2internal::9g * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::%!S * _loc21_;
            _loc3_.§^!S§.x += b2internal::#t * _loc19_;
            _loc3_.§^!S§.y += b2internal::#t * _loc20_;
            _loc3_.m_angularVelocity += b2internal::2e * _loc22_;
         }
         else
         {
            this.§[H§.§8c§();
            this.§@"§ = 0;
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
         var _loc2_:b2Body = b2internal::5!R;
         var _loc3_:b2Body = b2internal::>D;
         var _loc4_:b2Vec2 = _loc2_.§^!S§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§^!S§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§ !K§ && this.§2!a§ != b2internal::55)
         {
            _loc13_ = this.§<Z§.x * (_loc6_.x - _loc4_.x) + this.§<Z§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§0`§ * (this.§#d§ - _loc13_);
            _loc15_ = this.§@"§;
            _loc16_ = param1.§,>§ * this.§ var§;
            this.§@"§ = b2Math.§6m§(this.§@"§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§@"§ - _loc15_) * this.§<Z§.x;
            _loc9_ = _loc14_ * this.§<Z§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::9g * _loc8_;
            _loc4_.y -= b2internal::9g * _loc9_;
            _loc5_ -= b2internal::%!S * _loc10_;
            _loc6_.x += b2internal::#t * _loc8_;
            _loc6_.y += b2internal::#t * _loc9_;
            _loc7_ += b2internal::2e * _loc11_;
         }
         var _loc12_:Number = this.§^!&§.x * (_loc6_.x - _loc4_.x) + this.§^!&§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§]<§ && this.§2!a§ != b2internal::2!h)
         {
            _loc17_ = this.§<Z§.x * (_loc6_.x - _loc4_.x) + this.§<Z§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§[H§.Copy();
            _loc19_ = this.§'Q§.§&! §(new b2Vec2(),-_loc12_,-_loc17_);
            this.§[H§.§5>§(_loc19_);
            if(this.§2!a§ == b2internal::4;)
            {
               this.§[H§.y = b2Math.§"F§(this.§[H§.y,0);
            }
            else if(this.§2!a§ == b2internal::^!_)
            {
               this.§[H§.y = b2Math.§[!0§(this.§[H§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§[H§.y - _loc18_.y) * this.§'Q§.col2.x;
            if(this.§'Q§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§'Q§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§[H§.x = _loc21_;
            _loc19_.x = this.§[H§.x - _loc18_.x;
            _loc19_.y = this.§[H§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§^!&§.x + _loc19_.y * this.§<Z§.x;
            _loc9_ = _loc19_.x * this.§^!&§.y + _loc19_.y * this.§<Z§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::9g * _loc8_;
            _loc4_.y -= b2internal::9g * _loc9_;
            _loc5_ -= b2internal::%!S * _loc10_;
            _loc6_.x += b2internal::#t * _loc8_;
            _loc6_.y += b2internal::#t * _loc9_;
            _loc7_ += b2internal::2e * _loc11_;
         }
         else
         {
            if(this.§'Q§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§'Q§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§[H§.x += _loc22_;
            _loc8_ = _loc22_ * this.§^!&§.x;
            _loc9_ = _loc22_ * this.§^!&§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::9g * _loc8_;
            _loc4_.y -= b2internal::9g * _loc9_;
            _loc5_ -= b2internal::%!S * _loc10_;
            _loc6_.x += b2internal::#t * _loc8_;
            _loc6_.y += b2internal::#t * _loc9_;
            _loc7_ += b2internal::2e * _loc11_;
         }
         _loc2_.§^!S§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§^!S§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::5!R;
         var _loc5_:b2Body = b2internal::>D;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§"L§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§"L§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::=[.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::=[.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::[V.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::[V.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§]<§)
         {
            this.§<Z§ = b2Math.§]!I§(_loc20_,this.§0r§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§<Z§.y - (_loc27_ + _loc23_) * this.§<Z§.x;
            this.m_a2 = _loc24_ * this.§<Z§.y - _loc25_ * this.§<Z§.x;
            _loc34_ = this.§<Z§.x * _loc26_ + this.§<Z§.y * _loc27_;
            if(b2Math.§6!L§(this.§["§ - this.§4u§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§6m§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§6!L§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§4u§)
            {
               _loc19_ = b2Math.§6m§(_loc34_ - this.§4u§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§4u§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§["§)
            {
               _loc19_ = b2Math.§6m§(_loc34_ - this.§["§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§["§;
               _loc18_ = true;
            }
         }
         this.§^!&§ = b2Math.§]!I§(_loc20_,this.§6E§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§^!&§.y - (_loc27_ + _loc23_) * this.§^!&§.x;
         this.m_s2 = _loc24_ * this.§^!&§.y - _loc25_ * this.§^!&§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§^!&§.x * _loc26_ + this.§^!&§.y * _loc27_;
         _loc16_ = b2Math.§"F§(_loc16_,b2Math.§6!L§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::9g;
            _loc13_ = b2internal::#t;
            _loc14_ = b2internal::%!S;
            _loc15_ = b2internal::2e;
            this.§'Q§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§'Q§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§'Q§.col2.x = this.§'Q§.col1.y;
            this.§'Q§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§'Q§.§&! §(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::9g;
            _loc13_ = b2internal::#t;
            _loc14_ = b2internal::%!S;
            _loc15_ = b2internal::2e;
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
         var _loc30_:Number = _loc28_.x * this.§^!&§.x + _loc28_.y * this.§<Z§.x;
         var _loc31_:Number = _loc28_.x * this.§^!&§.y + _loc28_.y * this.§<Z§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::9g * _loc30_;
         _loc6_.y -= b2internal::9g * _loc31_;
         _loc7_ -= b2internal::%!S * _loc32_;
         _loc8_.x += b2internal::#t * _loc30_;
         _loc8_.y += b2internal::#t * _loc31_;
         _loc9_ += b2internal::2e * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§%t§();
         _loc5_.§%t§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
