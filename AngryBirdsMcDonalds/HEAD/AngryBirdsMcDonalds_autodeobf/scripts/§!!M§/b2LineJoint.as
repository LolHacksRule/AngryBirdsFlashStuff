package §!!M§
{
   import §+S§.b2Mat22;
   import §+S§.b2Math;
   import §+S§.b2Transform;
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §8T§.b2TimeStep;
   import §?!n§.b2Settings;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §[8§:b2Vec2;
      
      private var §^!Z§:b2Vec2;
      
      private var §-O§:b2Vec2;
      
      private var §&E§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §4O§:b2Mat22;
      
      private var §@!<§:b2Vec2;
      
      private var §6"§:Number;
      
      private var §,!L§:Number;
      
      private var §<!M§:Number;
      
      private var §=I§:Number;
      
      private var §[t§:Number;
      
      private var §%k§:Number;
      
      private var §&1§:Boolean;
      
      private var §-f§:Boolean;
      
      private var §]U§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§[8§ = new b2Vec2();
         this.§^!Z§ = new b2Vec2();
         this.§-O§ = new b2Vec2();
         this.§&E§ = new b2Vec2();
         this.§4O§ = new b2Mat22();
         this.§@!<§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§5!E§);
         this.m_localAnchor2.SetV(param1.§21§);
         this.§[8§.SetV(param1.§85§);
         this.§^!Z§.x = -this.§[8§.y;
         this.§^!Z§.y = this.§[8§.x;
         this.§@!<§.§%^§();
         this.§6"§ = 0;
         this.§,!L§ = 0;
         this.§<!M§ = param1.§#!b§;
         this.§=I§ = param1.§,!S§;
         this.§[t§ = param1.§8!L§;
         this.§%k§ = param1.motorSpeed;
         this.§&1§ = param1.§5X§;
         this.§-f§ = param1.§,!9§;
         this.§]U§ = b2internal::5! ;
         this.§-O§.§%^§();
         this.§&E§.§%^§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0!?.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::^!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§@!<§.x * this.§&E§.x + (this.§,!L§ + this.§@!<§.y) * this.§-O§.x),param1 * (this.§@!<§.x * this.§&E§.y + (this.§,!L§ + this.§@!<§.y) * this.§-O§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§@!<§.y;
      }
      
      public function §3!N§() : Number
      {
         var _loc1_:b2Body = b2internal::0!?;
         var _loc2_:b2Body = b2internal::^!l;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§]n§(this.§[8§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §@;§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::0!?;
         var _loc2_:b2Body = b2internal::^!l;
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
         var _loc15_:b2Vec2 = _loc1_.§]n§(this.§[8§);
         var _loc16_:b2Vec2 = _loc1_.§switch§;
         var _loc17_:b2Vec2 = _loc2_.§switch§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §4>§() : Boolean
      {
         return this.§&1§;
      }
      
      public function §]!K§(param1:Boolean) : void
      {
         b2internal::0!?.SetAwake(true);
         b2internal::^!l.SetAwake(true);
         this.§&1§ = param1;
      }
      
      public function §,&§() : Number
      {
         return this.§<!M§;
      }
      
      public function §0!W§() : Number
      {
         return this.§=I§;
      }
      
      public function §0&§(param1:Number, param2:Number) : void
      {
         b2internal::0!?.SetAwake(true);
         b2internal::^!l.SetAwake(true);
         this.§<!M§ = param1;
         this.§=I§ = param2;
      }
      
      public function §<x§() : Boolean
      {
         return this.§-f§;
      }
      
      public function §&n§(param1:Boolean) : void
      {
         b2internal::0!?.SetAwake(true);
         b2internal::^!l.SetAwake(true);
         this.§-f§ = param1;
      }
      
      public function §2#§(param1:Number) : void
      {
         b2internal::0!?.SetAwake(true);
         b2internal::^!l.SetAwake(true);
         this.§%k§ = param1;
      }
      
      public function §5#§() : Number
      {
         return this.§%k§;
      }
      
      public function §=!+§(param1:Number) : void
      {
         b2internal::0!?.SetAwake(true);
         b2internal::^!l.SetAwake(true);
         this.§[t§ = param1;
      }
      
      public function §@v§() : Number
      {
         return this.§[t§;
      }
      
      public function §+§() : Number
      {
         return this.§,!L§;
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
         var _loc2_:b2Body = b2internal::0!?;
         var _loc3_:b2Body = b2internal::^!l;
         b2internal::?].SetV(_loc2_.§;!U§());
         b2internal::5W.SetV(_loc3_.§;!U§());
         var _loc6_:b2Transform = _loc2_.§+!g§();
         var _loc7_:b2Transform = _loc3_.§+!g§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::?].x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::?].y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::5W.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::5W.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §;!p§ = _loc2_.§;!m§;
         §>G§ = _loc3_.§;!m§;
         §8;§ = _loc2_.§]q§;
         §3o§ = _loc3_.§]q§;
         this.§-O§.SetV(b2Math.§>H§(_loc6_.R,this.§[8§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§-O§.y - (_loc13_ + _loc9_) * this.§-O§.x;
         this.m_a2 = _loc10_ * this.§-O§.y - _loc11_ * this.§-O§.x;
         this.§6"§ = b2internal::;!p + b2internal::>G + b2internal::8; * this.m_a1 * this.m_a1 + b2internal::3o * this.m_a2 * this.m_a2;
         this.§6"§ = this.§6"§ > Number.MIN_VALUE ? Number(1 / this.§6"§) : Number(0);
         this.§&E§.SetV(b2Math.§>H§(_loc6_.R,this.§^!Z§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§&E§.y - (_loc13_ + _loc9_) * this.§&E§.x;
         this.m_s2 = _loc10_ * this.§&E§.y - _loc11_ * this.§&E§.x;
         var _loc14_:Number = b2internal::;!p;
         var _loc15_:Number = b2internal::>G;
         var _loc16_:Number = b2internal::8;;
         var _loc17_:Number = b2internal::3o;
         this.§4O§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§4O§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§4O§.col2.x = this.§4O§.col1.y;
         this.§4O§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§&1§)
         {
            _loc18_ = this.§-O§.x * _loc12_ + this.§-O§.y * _loc13_;
            if(b2Math.§3!0§(this.§=I§ - this.§<!M§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§]U§ = b2internal::`!?;
            }
            else if(_loc18_ <= this.§<!M§)
            {
               if(this.§]U§ != b2internal::7')
               {
                  this.§]U§ = b2internal::7';
                  this.§@!<§.y = 0;
               }
            }
            else if(_loc18_ >= this.§=I§)
            {
               if(this.§]U§ != b2internal::%+)
               {
                  this.§]U§ = b2internal::%+;
                  this.§@!<§.y = 0;
               }
            }
            else
            {
               this.§]U§ = b2internal::5! ;
               this.§@!<§.y = 0;
            }
         }
         else
         {
            this.§]U§ = b2internal::5! ;
         }
         if(this.§-f§ == false)
         {
            this.§,!L§ = 0;
         }
         if(param1.§7z§)
         {
            this.§@!<§.x *= param1.§4!a§;
            this.§@!<§.y *= param1.§4!a§;
            this.§,!L§ *= param1.§4!a§;
            _loc19_ = this.§@!<§.x * this.§&E§.x + (this.§,!L§ + this.§@!<§.y) * this.§-O§.x;
            _loc20_ = this.§@!<§.x * this.§&E§.y + (this.§,!L§ + this.§@!<§.y) * this.§-O§.y;
            _loc21_ = this.§@!<§.x * this.m_s1 + (this.§,!L§ + this.§@!<§.y) * this.m_a1;
            _loc22_ = this.§@!<§.x * this.m_s2 + (this.§,!L§ + this.§@!<§.y) * this.m_a2;
            _loc2_.§switch§.x -= b2internal::;!p * _loc19_;
            _loc2_.§switch§.y -= b2internal::;!p * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::8; * _loc21_;
            _loc3_.§switch§.x += b2internal::>G * _loc19_;
            _loc3_.§switch§.y += b2internal::>G * _loc20_;
            _loc3_.m_angularVelocity += b2internal::3o * _loc22_;
         }
         else
         {
            this.§@!<§.§%^§();
            this.§,!L§ = 0;
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
         var _loc2_:b2Body = b2internal::0!?;
         var _loc3_:b2Body = b2internal::^!l;
         var _loc4_:b2Vec2 = _loc2_.§switch§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§switch§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§-f§ && this.§]U§ != b2internal::`!?)
         {
            _loc13_ = this.§-O§.x * (_loc6_.x - _loc4_.x) + this.§-O§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§6"§ * (this.§%k§ - _loc13_);
            _loc15_ = this.§,!L§;
            _loc16_ = param1.§9[§ * this.§[t§;
            this.§,!L§ = b2Math.§&!<§(this.§,!L§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§,!L§ - _loc15_) * this.§-O§.x;
            _loc9_ = _loc14_ * this.§-O§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::;!p * _loc8_;
            _loc4_.y -= b2internal::;!p * _loc9_;
            _loc5_ -= b2internal::8; * _loc10_;
            _loc6_.x += b2internal::>G * _loc8_;
            _loc6_.y += b2internal::>G * _loc9_;
            _loc7_ += b2internal::3o * _loc11_;
         }
         var _loc12_:Number = this.§&E§.x * (_loc6_.x - _loc4_.x) + this.§&E§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§&1§ && this.§]U§ != b2internal::5! )
         {
            _loc17_ = this.§-O§.x * (_loc6_.x - _loc4_.x) + this.§-O§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§@!<§.Copy();
            _loc19_ = this.§4O§.§`H§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§@!<§.§0o§(_loc19_);
            if(this.§]U§ == b2internal::7')
            {
               this.§@!<§.y = b2Math.§!U§(this.§@!<§.y,0);
            }
            else if(this.§]U§ == b2internal::%+)
            {
               this.§@!<§.y = b2Math.§4!+§(this.§@!<§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§@!<§.y - _loc18_.y) * this.§4O§.col2.x;
            if(this.§4O§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§4O§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§@!<§.x = _loc21_;
            _loc19_.x = this.§@!<§.x - _loc18_.x;
            _loc19_.y = this.§@!<§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§&E§.x + _loc19_.y * this.§-O§.x;
            _loc9_ = _loc19_.x * this.§&E§.y + _loc19_.y * this.§-O§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::;!p * _loc8_;
            _loc4_.y -= b2internal::;!p * _loc9_;
            _loc5_ -= b2internal::8; * _loc10_;
            _loc6_.x += b2internal::>G * _loc8_;
            _loc6_.y += b2internal::>G * _loc9_;
            _loc7_ += b2internal::3o * _loc11_;
         }
         else
         {
            if(this.§4O§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§4O§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§@!<§.x += _loc22_;
            _loc8_ = _loc22_ * this.§&E§.x;
            _loc9_ = _loc22_ * this.§&E§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::;!p * _loc8_;
            _loc4_.y -= b2internal::;!p * _loc9_;
            _loc5_ -= b2internal::8; * _loc10_;
            _loc6_.x += b2internal::>G * _loc8_;
            _loc6_.y += b2internal::>G * _loc9_;
            _loc7_ += b2internal::3o * _loc11_;
         }
         _loc2_.§switch§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§switch§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::0!?;
         var _loc5_:b2Body = b2internal::^!l;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§4!G§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§4!G§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::?].x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::?].y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::5W.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::5W.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§&1§)
         {
            this.§-O§ = b2Math.§>H§(_loc20_,this.§[8§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§-O§.y - (_loc27_ + _loc23_) * this.§-O§.x;
            this.m_a2 = _loc24_ * this.§-O§.y - _loc25_ * this.§-O§.x;
            _loc34_ = this.§-O§.x * _loc26_ + this.§-O§.y * _loc27_;
            if(b2Math.§3!0§(this.§=I§ - this.§<!M§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§&!<§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§3!0§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§<!M§)
            {
               _loc19_ = b2Math.§&!<§(_loc34_ - this.§<!M§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§<!M§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§=I§)
            {
               _loc19_ = b2Math.§&!<§(_loc34_ - this.§=I§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§=I§;
               _loc18_ = true;
            }
         }
         this.§&E§ = b2Math.§>H§(_loc20_,this.§^!Z§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§&E§.y - (_loc27_ + _loc23_) * this.§&E§.x;
         this.m_s2 = _loc24_ * this.§&E§.y - _loc25_ * this.§&E§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§&E§.x * _loc26_ + this.§&E§.y * _loc27_;
         _loc16_ = b2Math.§!U§(_loc16_,b2Math.§3!0§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::;!p;
            _loc13_ = b2internal::>G;
            _loc14_ = b2internal::8;;
            _loc15_ = b2internal::3o;
            this.§4O§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§4O§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§4O§.col2.x = this.§4O§.col1.y;
            this.§4O§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§4O§.§`H§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::;!p;
            _loc13_ = b2internal::>G;
            _loc14_ = b2internal::8;;
            _loc15_ = b2internal::3o;
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
         var _loc30_:Number = _loc28_.x * this.§&E§.x + _loc28_.y * this.§-O§.x;
         var _loc31_:Number = _loc28_.x * this.§&E§.y + _loc28_.y * this.§-O§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::;!p * _loc30_;
         _loc6_.y -= b2internal::;!p * _loc31_;
         _loc7_ -= b2internal::8; * _loc32_;
         _loc8_.x += b2internal::>G * _loc30_;
         _loc8_.y += b2internal::>G * _loc31_;
         _loc9_ += b2internal::3o * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§40§();
         _loc5_.§40§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
