package §`!Z§
{
   import §"U§.b2Mat22;
   import §"U§.b2Math;
   import §"U§.b2Transform;
   import §"U§.b2Vec2;
   import §3!g§.b2Body;
   import §3!g§.b2TimeStep;
   import §=!X§.b2Settings;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §%u§:b2Vec2;
      
      private var §2!H§:b2Vec2;
      
      private var §"!R§:b2Vec2;
      
      private var § in§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §7?§:b2Mat22;
      
      private var §;!V§:b2Vec2;
      
      private var §0T§:Number;
      
      private var §=E§:Number;
      
      private var §'T§:Number;
      
      private var native:Number;
      
      private var §'F§:Number;
      
      private var §-!N§:Number;
      
      private var §2!T§:Boolean;
      
      private var §68§:Boolean;
      
      private var §``§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§%u§ = new b2Vec2();
         this.§2!H§ = new b2Vec2();
         this.§"!R§ = new b2Vec2();
         this.§ in§ = new b2Vec2();
         this.§7?§ = new b2Mat22();
         this.§;!V§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§<4§);
         this.m_localAnchor2.SetV(param1.§2§);
         this.§%u§.SetV(param1.§3!'§);
         this.§2!H§.x = -this.§%u§.y;
         this.§2!H§.y = this.§%u§.x;
         this.§;!V§.§1!=§();
         this.§0T§ = 0;
         this.§=E§ = 0;
         this.§'T§ = param1.§[!Q§;
         this.native = param1.§;;§;
         this.§'F§ = param1.§7!!§;
         this.§-!N§ = param1.motorSpeed;
         this.§2!T§ = param1.§2!;§;
         this.§68§ = param1.§>!e§;
         this.§``§ = b2internal::@x;
         this.§"!R§.§1!=§();
         this.§ in§.§1!=§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5!$.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::'!?.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§;!V§.x * this.§ in§.x + (this.§=E§ + this.§;!V§.y) * this.§"!R§.x),param1 * (this.§;!V§.x * this.§ in§.y + (this.§=E§ + this.§;!V§.y) * this.§"!R§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;!V§.y;
      }
      
      public function § !f§() : Number
      {
         var _loc1_:b2Body = b2internal::5!$;
         var _loc2_:b2Body = b2internal::'!?;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§^0§(this.§%u§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §^!H§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::5!$;
         var _loc2_:b2Body = b2internal::'!?;
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
         var _loc15_:b2Vec2 = _loc1_.§^0§(this.§%u§);
         var _loc16_:b2Vec2 = _loc1_.§'R§;
         var _loc17_:b2Vec2 = _loc2_.§'R§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §#!i§() : Boolean
      {
         return this.§2!T§;
      }
      
      public function §+!7§(param1:Boolean) : void
      {
         b2internal::5!$.SetAwake(true);
         b2internal::'!?.SetAwake(true);
         this.§2!T§ = param1;
      }
      
      public function §"8§() : Number
      {
         return this.§'T§;
      }
      
      public function §7t§() : Number
      {
         return this.native;
      }
      
      public function §@!O§(param1:Number, param2:Number) : void
      {
         b2internal::5!$.SetAwake(true);
         b2internal::'!?.SetAwake(true);
         this.§'T§ = param1;
         this.native = param2;
      }
      
      public function §>!-§() : Boolean
      {
         return this.§68§;
      }
      
      public function §&!m§(param1:Boolean) : void
      {
         b2internal::5!$.SetAwake(true);
         b2internal::'!?.SetAwake(true);
         this.§68§ = param1;
      }
      
      public function §>!L§(param1:Number) : void
      {
         b2internal::5!$.SetAwake(true);
         b2internal::'!?.SetAwake(true);
         this.§-!N§ = param1;
      }
      
      public function §'!`§() : Number
      {
         return this.§-!N§;
      }
      
      public function §><§(param1:Number) : void
      {
         b2internal::5!$.SetAwake(true);
         b2internal::'!?.SetAwake(true);
         this.§'F§ = param1;
      }
      
      public function §^!-§() : Number
      {
         return this.§'F§;
      }
      
      public function §,!&§() : Number
      {
         return this.§=E§;
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
         var _loc2_:b2Body = b2internal::5!$;
         var _loc3_:b2Body = b2internal::'!?;
         b2internal::+!I.SetV(_loc2_.§%;§());
         b2internal::&!$.SetV(_loc3_.§%;§());
         var _loc6_:b2Transform = _loc2_.§=q§();
         var _loc7_:b2Transform = _loc3_.§=q§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::+!I.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::+!I.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::&!$.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::&!$.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §]!_§ = _loc2_.§>w§;
         §;L§ = _loc3_.§>w§;
         §;i§ = _loc2_.§#R§;
         §%!=§ = _loc3_.§#R§;
         this.§"!R§.SetV(b2Math.§+!T§(_loc6_.R,this.§%u§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§"!R§.y - (_loc13_ + _loc9_) * this.§"!R§.x;
         this.m_a2 = _loc10_ * this.§"!R§.y - _loc11_ * this.§"!R§.x;
         this.§0T§ = b2internal::]!_ + b2internal::;L + b2internal::;i * this.m_a1 * this.m_a1 + b2internal::%!= * this.m_a2 * this.m_a2;
         this.§0T§ = this.§0T§ > Number.MIN_VALUE ? Number(1 / this.§0T§) : Number(0);
         this.§ in§.SetV(b2Math.§+!T§(_loc6_.R,this.§2!H§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§ in§.y - (_loc13_ + _loc9_) * this.§ in§.x;
         this.m_s2 = _loc10_ * this.§ in§.y - _loc11_ * this.§ in§.x;
         var _loc14_:Number = b2internal::]!_;
         var _loc15_:Number = b2internal::;L;
         var _loc16_:Number = b2internal::;i;
         var _loc17_:Number = b2internal::%!=;
         this.§7?§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§7?§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§7?§.col2.x = this.§7?§.col1.y;
         this.§7?§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§2!T§)
         {
            _loc18_ = this.§"!R§.x * _loc12_ + this.§"!R§.y * _loc13_;
            if(b2Math.§;-§(this.native - this.§'T§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§``§ = b2internal::3!T;
            }
            else if(_loc18_ <= this.§'T§)
            {
               if(this.§``§ != b2internal::'_)
               {
                  this.§``§ = b2internal::'_;
                  this.§;!V§.y = 0;
               }
            }
            else if(_loc18_ >= this.native)
            {
               if(this.§``§ != b2internal::]!6)
               {
                  this.§``§ = b2internal::]!6;
                  this.§;!V§.y = 0;
               }
            }
            else
            {
               this.§``§ = b2internal::@x;
               this.§;!V§.y = 0;
            }
         }
         else
         {
            this.§``§ = b2internal::@x;
         }
         if(this.§68§ == false)
         {
            this.§=E§ = 0;
         }
         if(param1.§%!C§)
         {
            this.§;!V§.x *= param1.§2!=§;
            this.§;!V§.y *= param1.§2!=§;
            this.§=E§ *= param1.§2!=§;
            _loc19_ = this.§;!V§.x * this.§ in§.x + (this.§=E§ + this.§;!V§.y) * this.§"!R§.x;
            _loc20_ = this.§;!V§.x * this.§ in§.y + (this.§=E§ + this.§;!V§.y) * this.§"!R§.y;
            _loc21_ = this.§;!V§.x * this.m_s1 + (this.§=E§ + this.§;!V§.y) * this.m_a1;
            _loc22_ = this.§;!V§.x * this.m_s2 + (this.§=E§ + this.§;!V§.y) * this.m_a2;
            _loc2_.§'R§.x -= b2internal::]!_ * _loc19_;
            _loc2_.§'R§.y -= b2internal::]!_ * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::;i * _loc21_;
            _loc3_.§'R§.x += b2internal::;L * _loc19_;
            _loc3_.§'R§.y += b2internal::;L * _loc20_;
            _loc3_.m_angularVelocity += b2internal::%!= * _loc22_;
         }
         else
         {
            this.§;!V§.§1!=§();
            this.§=E§ = 0;
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
         var _loc2_:b2Body = b2internal::5!$;
         var _loc3_:b2Body = b2internal::'!?;
         var _loc4_:b2Vec2 = _loc2_.§'R§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§'R§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§68§ && this.§``§ != b2internal::3!T)
         {
            _loc13_ = this.§"!R§.x * (_loc6_.x - _loc4_.x) + this.§"!R§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§0T§ * (this.§-!N§ - _loc13_);
            _loc15_ = this.§=E§;
            _loc16_ = param1.§+n§ * this.§'F§;
            this.§=E§ = b2Math.§=!5§(this.§=E§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§=E§ - _loc15_) * this.§"!R§.x;
            _loc9_ = _loc14_ * this.§"!R§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::]!_ * _loc8_;
            _loc4_.y -= b2internal::]!_ * _loc9_;
            _loc5_ -= b2internal::;i * _loc10_;
            _loc6_.x += b2internal::;L * _loc8_;
            _loc6_.y += b2internal::;L * _loc9_;
            _loc7_ += b2internal::%!= * _loc11_;
         }
         var _loc12_:Number = this.§ in§.x * (_loc6_.x - _loc4_.x) + this.§ in§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§2!T§ && this.§``§ != b2internal::@x)
         {
            _loc17_ = this.§"!R§.x * (_loc6_.x - _loc4_.x) + this.§"!R§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§;!V§.Copy();
            _loc19_ = this.§7?§.§`D§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§;!V§.§`s§(_loc19_);
            if(this.§``§ == b2internal::'_)
            {
               this.§;!V§.y = b2Math.§`l§(this.§;!V§.y,0);
            }
            else if(this.§``§ == b2internal::]!6)
            {
               this.§;!V§.y = b2Math.§+!b§(this.§;!V§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§;!V§.y - _loc18_.y) * this.§7?§.col2.x;
            if(this.§7?§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§7?§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§;!V§.x = _loc21_;
            _loc19_.x = this.§;!V§.x - _loc18_.x;
            _loc19_.y = this.§;!V§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§ in§.x + _loc19_.y * this.§"!R§.x;
            _loc9_ = _loc19_.x * this.§ in§.y + _loc19_.y * this.§"!R§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::]!_ * _loc8_;
            _loc4_.y -= b2internal::]!_ * _loc9_;
            _loc5_ -= b2internal::;i * _loc10_;
            _loc6_.x += b2internal::;L * _loc8_;
            _loc6_.y += b2internal::;L * _loc9_;
            _loc7_ += b2internal::%!= * _loc11_;
         }
         else
         {
            if(this.§7?§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§7?§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§;!V§.x += _loc22_;
            _loc8_ = _loc22_ * this.§ in§.x;
            _loc9_ = _loc22_ * this.§ in§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::]!_ * _loc8_;
            _loc4_.y -= b2internal::]!_ * _loc9_;
            _loc5_ -= b2internal::;i * _loc10_;
            _loc6_.x += b2internal::;L * _loc8_;
            _loc6_.y += b2internal::;L * _loc9_;
            _loc7_ += b2internal::%!= * _loc11_;
         }
         _loc2_.§'R§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§'R§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::5!$;
         var _loc5_:b2Body = b2internal::'!?;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§+m§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§+m§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::+!I.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::+!I.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::&!$.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::&!$.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§2!T§)
         {
            this.§"!R§ = b2Math.§+!T§(_loc20_,this.§%u§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§"!R§.y - (_loc27_ + _loc23_) * this.§"!R§.x;
            this.m_a2 = _loc24_ * this.§"!R§.y - _loc25_ * this.§"!R§.x;
            _loc34_ = this.§"!R§.x * _loc26_ + this.§"!R§.y * _loc27_;
            if(b2Math.§;-§(this.native - this.§'T§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§=!5§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§;-§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§'T§)
            {
               _loc19_ = b2Math.§=!5§(_loc34_ - this.§'T§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§'T§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.native)
            {
               _loc19_ = b2Math.§=!5§(_loc34_ - this.native + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.native;
               _loc18_ = true;
            }
         }
         this.§ in§ = b2Math.§+!T§(_loc20_,this.§2!H§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§ in§.y - (_loc27_ + _loc23_) * this.§ in§.x;
         this.m_s2 = _loc24_ * this.§ in§.y - _loc25_ * this.§ in§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§ in§.x * _loc26_ + this.§ in§.y * _loc27_;
         _loc16_ = b2Math.§`l§(_loc16_,b2Math.§;-§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::]!_;
            _loc13_ = b2internal::;L;
            _loc14_ = b2internal::;i;
            _loc15_ = b2internal::%!=;
            this.§7?§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§7?§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§7?§.col2.x = this.§7?§.col1.y;
            this.§7?§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§7?§.§`D§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::]!_;
            _loc13_ = b2internal::;L;
            _loc14_ = b2internal::;i;
            _loc15_ = b2internal::%!=;
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
         var _loc30_:Number = _loc28_.x * this.§ in§.x + _loc28_.y * this.§"!R§.x;
         var _loc31_:Number = _loc28_.x * this.§ in§.y + _loc28_.y * this.§"!R§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::]!_ * _loc30_;
         _loc6_.y -= b2internal::]!_ * _loc31_;
         _loc7_ -= b2internal::;i * _loc32_;
         _loc8_.x += b2internal::;L * _loc30_;
         _loc8_.y += b2internal::;L * _loc31_;
         _loc9_ += b2internal::%!= * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§4j§();
         _loc5_.§4j§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
