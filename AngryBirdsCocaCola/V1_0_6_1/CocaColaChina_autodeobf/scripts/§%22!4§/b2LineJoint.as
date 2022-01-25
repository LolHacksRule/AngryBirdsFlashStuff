package §"!4§
{
   import § y§.b2Body;
   import § y§.b2TimeStep;
   import §54§.b2Settings;
   import §54§.b2internal;
   import §;h§.b2Mat22;
   import §;h§.b2Math;
   import §;h§.b2Transform;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §%R§:b2Vec2;
      
      private var §!y§:b2Vec2;
      
      private var §4l§:b2Vec2;
      
      private var §]!X§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §[C§:b2Mat22;
      
      private var §46§:b2Vec2;
      
      private var §3I§:Number;
      
      private var §3!L§:Number;
      
      private var § do§:Number;
      
      private var §5!S§:Number;
      
      private var §4!Y§:Number;
      
      private var §5&§:Number;
      
      private var §,!+§:Boolean;
      
      private var §7C§:Boolean;
      
      private var §1'§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§%R§ = new b2Vec2();
         this.§!y§ = new b2Vec2();
         this.§4l§ = new b2Vec2();
         this.§]!X§ = new b2Vec2();
         this.§[C§ = new b2Mat22();
         this.§46§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§9%§);
         this.m_localAnchor2.SetV(param1.§+!"§);
         this.§%R§.SetV(param1.§ =§);
         this.§!y§.x = -this.§%R§.y;
         this.§!y§.y = this.§%R§.x;
         this.§46§.§9!V§();
         this.§3I§ = 0;
         this.§3!L§ = 0;
         this.§ do§ = param1.§=!8§;
         this.§5!S§ = param1.§,,§;
         this.§4!Y§ = param1.§8'§;
         this.§5&§ = param1.motorSpeed;
         this.§,!+§ = param1.§@H§;
         this.§7C§ = param1.§#!5§;
         this.§1'§ = b2internal::'P;
         this.§4l§.§9!V§();
         this.§]!X§.§9!V§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!4.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§46§.x * this.§]!X§.x + (this.§3!L§ + this.§46§.y) * this.§4l§.x),param1 * (this.§46§.x * this.§]!X§.y + (this.§3!L§ + this.§46§.y) * this.§4l§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§46§.y;
      }
      
      public function §4!_§() : Number
      {
         var _loc1_:b2Body = b2internal::`1;
         var _loc2_:b2Body = b2internal::[!4;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§@7§(this.§%R§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §]!9§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::`1;
         var _loc2_:b2Body = b2internal::[!4;
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
         var _loc15_:b2Vec2 = _loc1_.§@7§(this.§%R§);
         var _loc16_:b2Vec2 = _loc1_.§+!W§;
         var _loc17_:b2Vec2 = _loc2_.§+!W§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §%T§() : Boolean
      {
         return this.§,!+§;
      }
      
      public function §"l§(param1:Boolean) : void
      {
         b2internal::`1.SetAwake(true);
         b2internal::[!4.SetAwake(true);
         this.§,!+§ = param1;
      }
      
      public function §,i§() : Number
      {
         return this.§ do§;
      }
      
      public function §@!I§() : Number
      {
         return this.§5!S§;
      }
      
      public function §6#§(param1:Number, param2:Number) : void
      {
         b2internal::`1.SetAwake(true);
         b2internal::[!4.SetAwake(true);
         this.§ do§ = param1;
         this.§5!S§ = param2;
      }
      
      public function §]p§() : Boolean
      {
         return this.§7C§;
      }
      
      public function §with§(param1:Boolean) : void
      {
         b2internal::`1.SetAwake(true);
         b2internal::[!4.SetAwake(true);
         this.§7C§ = param1;
      }
      
      public function §+e§(param1:Number) : void
      {
         b2internal::`1.SetAwake(true);
         b2internal::[!4.SetAwake(true);
         this.§5&§ = param1;
      }
      
      public function §`!=§() : Number
      {
         return this.§5&§;
      }
      
      public function §[!M§(param1:Number) : void
      {
         b2internal::`1.SetAwake(true);
         b2internal::[!4.SetAwake(true);
         this.§4!Y§ = param1;
      }
      
      public function §3!%§() : Number
      {
         return this.§4!Y§;
      }
      
      public function §&!@§() : Number
      {
         return this.§3!L§;
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
         var _loc2_:b2Body = b2internal::`1;
         var _loc3_:b2Body = b2internal::[!4;
         b2internal::]r.SetV(_loc2_.§=l§());
         b2internal::#N.SetV(_loc3_.§=l§());
         var _loc6_:b2Transform = _loc2_.§0!S§();
         var _loc7_:b2Transform = _loc3_.§0!S§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::]r.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::]r.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::#N.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::#N.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §0!'§ = _loc2_.§!S§;
         §]C§ = _loc3_.§!S§;
         §'t§ = _loc2_.§2`§;
         §=!S§ = _loc3_.§2`§;
         this.§4l§.SetV(b2Math.§0q§(_loc6_.R,this.§%R§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§4l§.y - (_loc13_ + _loc9_) * this.§4l§.x;
         this.m_a2 = _loc10_ * this.§4l§.y - _loc11_ * this.§4l§.x;
         this.§3I§ = b2internal::0!' + b2internal::]C + b2internal::'t * this.m_a1 * this.m_a1 + b2internal::=!S * this.m_a2 * this.m_a2;
         this.§3I§ = this.§3I§ > Number.MIN_VALUE ? Number(1 / this.§3I§) : Number(0);
         this.§]!X§.SetV(b2Math.§0q§(_loc6_.R,this.§!y§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§]!X§.y - (_loc13_ + _loc9_) * this.§]!X§.x;
         this.m_s2 = _loc10_ * this.§]!X§.y - _loc11_ * this.§]!X§.x;
         var _loc14_:Number = b2internal::0!';
         var _loc15_:Number = b2internal::]C;
         var _loc16_:Number = b2internal::'t;
         var _loc17_:Number = b2internal::=!S;
         this.§[C§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§[C§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§[C§.col2.x = this.§[C§.col1.y;
         this.§[C§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§,!+§)
         {
            _loc18_ = this.§4l§.x * _loc12_ + this.§4l§.y * _loc13_;
            if(b2Math.§7'§(this.§5!S§ - this.§ do§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§1'§ = b2internal::`u;
            }
            else if(_loc18_ <= this.§ do§)
            {
               if(this.§1'§ != b2internal::;!-)
               {
                  this.§1'§ = b2internal::;!-;
                  this.§46§.y = 0;
               }
            }
            else if(_loc18_ >= this.§5!S§)
            {
               if(this.§1'§ != b2internal::-g)
               {
                  this.§1'§ = b2internal::-g;
                  this.§46§.y = 0;
               }
            }
            else
            {
               this.§1'§ = b2internal::'P;
               this.§46§.y = 0;
            }
         }
         else
         {
            this.§1'§ = b2internal::'P;
         }
         if(this.§7C§ == false)
         {
            this.§3!L§ = 0;
         }
         if(param1.§[!Z§)
         {
            this.§46§.x *= param1.§56§;
            this.§46§.y *= param1.§56§;
            this.§3!L§ *= param1.§56§;
            _loc19_ = this.§46§.x * this.§]!X§.x + (this.§3!L§ + this.§46§.y) * this.§4l§.x;
            _loc20_ = this.§46§.x * this.§]!X§.y + (this.§3!L§ + this.§46§.y) * this.§4l§.y;
            _loc21_ = this.§46§.x * this.m_s1 + (this.§3!L§ + this.§46§.y) * this.m_a1;
            _loc22_ = this.§46§.x * this.m_s2 + (this.§3!L§ + this.§46§.y) * this.m_a2;
            _loc2_.§+!W§.x -= b2internal::0!' * _loc19_;
            _loc2_.§+!W§.y -= b2internal::0!' * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::'t * _loc21_;
            _loc3_.§+!W§.x += b2internal::]C * _loc19_;
            _loc3_.§+!W§.y += b2internal::]C * _loc20_;
            _loc3_.m_angularVelocity += b2internal::=!S * _loc22_;
         }
         else
         {
            this.§46§.§9!V§();
            this.§3!L§ = 0;
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
         var _loc2_:b2Body = b2internal::`1;
         var _loc3_:b2Body = b2internal::[!4;
         var _loc4_:b2Vec2 = _loc2_.§+!W§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§+!W§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§7C§ && this.§1'§ != b2internal::`u)
         {
            _loc13_ = this.§4l§.x * (_loc6_.x - _loc4_.x) + this.§4l§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§3I§ * (this.§5&§ - _loc13_);
            _loc15_ = this.§3!L§;
            _loc16_ = param1.§9!^§ * this.§4!Y§;
            this.§3!L§ = b2Math.§!!T§(this.§3!L§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§3!L§ - _loc15_) * this.§4l§.x;
            _loc9_ = _loc14_ * this.§4l§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::0!' * _loc8_;
            _loc4_.y -= b2internal::0!' * _loc9_;
            _loc5_ -= b2internal::'t * _loc10_;
            _loc6_.x += b2internal::]C * _loc8_;
            _loc6_.y += b2internal::]C * _loc9_;
            _loc7_ += b2internal::=!S * _loc11_;
         }
         var _loc12_:Number = this.§]!X§.x * (_loc6_.x - _loc4_.x) + this.§]!X§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§,!+§ && this.§1'§ != b2internal::'P)
         {
            _loc17_ = this.§4l§.x * (_loc6_.x - _loc4_.x) + this.§4l§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§46§.Copy();
            _loc19_ = this.§[C§.§-7§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§46§.§8J§(_loc19_);
            if(this.§1'§ == b2internal::;!-)
            {
               this.§46§.y = b2Math.§@!'§(this.§46§.y,0);
            }
            else if(this.§1'§ == b2internal::-g)
            {
               this.§46§.y = b2Math.§13§(this.§46§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§46§.y - _loc18_.y) * this.§[C§.col2.x;
            if(this.§[C§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§[C§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§46§.x = _loc21_;
            _loc19_.x = this.§46§.x - _loc18_.x;
            _loc19_.y = this.§46§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§]!X§.x + _loc19_.y * this.§4l§.x;
            _loc9_ = _loc19_.x * this.§]!X§.y + _loc19_.y * this.§4l§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::0!' * _loc8_;
            _loc4_.y -= b2internal::0!' * _loc9_;
            _loc5_ -= b2internal::'t * _loc10_;
            _loc6_.x += b2internal::]C * _loc8_;
            _loc6_.y += b2internal::]C * _loc9_;
            _loc7_ += b2internal::=!S * _loc11_;
         }
         else
         {
            if(this.§[C§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§[C§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§46§.x += _loc22_;
            _loc8_ = _loc22_ * this.§]!X§.x;
            _loc9_ = _loc22_ * this.§]!X§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::0!' * _loc8_;
            _loc4_.y -= b2internal::0!' * _loc9_;
            _loc5_ -= b2internal::'t * _loc10_;
            _loc6_.x += b2internal::]C * _loc8_;
            _loc6_.y += b2internal::]C * _loc9_;
            _loc7_ += b2internal::=!S * _loc11_;
         }
         _loc2_.§+!W§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§+!W§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::`1;
         var _loc5_:b2Body = b2internal::[!4;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§!!a§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§!!a§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::]r.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::]r.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::#N.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::#N.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§,!+§)
         {
            this.§4l§ = b2Math.§0q§(_loc20_,this.§%R§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§4l§.y - (_loc27_ + _loc23_) * this.§4l§.x;
            this.m_a2 = _loc24_ * this.§4l§.y - _loc25_ * this.§4l§.x;
            _loc34_ = this.§4l§.x * _loc26_ + this.§4l§.y * _loc27_;
            if(b2Math.§7'§(this.§5!S§ - this.§ do§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§!!T§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§7'§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§ do§)
            {
               _loc19_ = b2Math.§!!T§(_loc34_ - this.§ do§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§ do§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§5!S§)
            {
               _loc19_ = b2Math.§!!T§(_loc34_ - this.§5!S§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§5!S§;
               _loc18_ = true;
            }
         }
         this.§]!X§ = b2Math.§0q§(_loc20_,this.§!y§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§]!X§.y - (_loc27_ + _loc23_) * this.§]!X§.x;
         this.m_s2 = _loc24_ * this.§]!X§.y - _loc25_ * this.§]!X§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§]!X§.x * _loc26_ + this.§]!X§.y * _loc27_;
         _loc16_ = b2Math.§@!'§(_loc16_,b2Math.§7'§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::0!';
            _loc13_ = b2internal::]C;
            _loc14_ = b2internal::'t;
            _loc15_ = b2internal::=!S;
            this.§[C§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§[C§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§[C§.col2.x = this.§[C§.col1.y;
            this.§[C§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§[C§.§-7§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::0!';
            _loc13_ = b2internal::]C;
            _loc14_ = b2internal::'t;
            _loc15_ = b2internal::=!S;
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
         var _loc30_:Number = _loc28_.x * this.§]!X§.x + _loc28_.y * this.§4l§.x;
         var _loc31_:Number = _loc28_.x * this.§]!X§.y + _loc28_.y * this.§4l§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::0!' * _loc30_;
         _loc6_.y -= b2internal::0!' * _loc31_;
         _loc7_ -= b2internal::'t * _loc32_;
         _loc8_.x += b2internal::]C * _loc30_;
         _loc8_.y += b2internal::]C * _loc31_;
         _loc9_ += b2internal::=!S * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§-!d§();
         _loc5_.§-!d§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
