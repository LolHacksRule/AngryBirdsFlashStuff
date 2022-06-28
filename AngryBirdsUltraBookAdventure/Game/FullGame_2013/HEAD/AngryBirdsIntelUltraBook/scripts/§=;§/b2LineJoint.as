package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §!-§:b2Vec2;
      
      private var §#g§:b2Vec2;
      
      private var §@_§:b2Vec2;
      
      private var §8!"§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §^!3§:b2Mat22;
      
      private var §;D§:b2Vec2;
      
      private var § !J§:Number;
      
      private var §4k§:Number;
      
      private var §%!I§:Number;
      
      private var §^!b§:Number;
      
      private var §&U§:Number;
      
      private var §2"§:Number;
      
      private var §3!§:Boolean;
      
      private var §8!_§:Boolean;
      
      private var §!!I§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§!-§ = new b2Vec2();
         this.§#g§ = new b2Vec2();
         this.§@_§ = new b2Vec2();
         this.§8!"§ = new b2Vec2();
         this.§^!3§ = new b2Mat22();
         this.§;D§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§>!g§);
         this.m_localAnchor2.SetV(param1.§&1§);
         this.§!-§.SetV(param1.§0?§);
         this.§#g§.x = -this.§!-§.y;
         this.§#g§.y = this.§!-§.x;
         this.§;D§.§@!;§();
         this.§ !J§ = 0;
         this.§4k§ = 0;
         this.§%!I§ = param1.§[9§;
         this.§^!b§ = param1.§@!f§;
         this.§&U§ = param1.each;
         this.§2"§ = param1.motorSpeed;
         this.§3!§ = param1.§0$§;
         this.§8!_§ = param1.§ in§;
         this.§!!I§ = §5!§;
         this.§@_§.§@!;§();
         this.§8!"§.§@!;§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §-;§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§;D§.x * this.§8!"§.x + (this.§4k§ + this.§;D§.y) * this.§@_§.x),param1 * (this.§;D§.x * this.§8!"§.y + (this.§4k§ + this.§;D§.y) * this.§@_§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;D§.y;
      }
      
      public function §]f§() : Number
      {
         var _loc1_:b2Body = §-;§;
         var _loc2_:b2Body = §`x§;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2 = _loc2_.GetWorldPoint(this.m_localAnchor2);
         var _loc6_:Number = _loc5_.x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2 = _loc1_.§=2§(this.§!-§);
         return Number(_loc8_.x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §,!9§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = §-;§;
         var _loc2_:b2Body = §`x§;
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
         var _loc15_:b2Vec2 = _loc1_.§=2§(this.§!-§);
         var _loc16_:b2Vec2 = _loc1_.§4!h§;
         var _loc17_:b2Vec2 = _loc2_.§4!h§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §0§() : Boolean
      {
         return this.§3!§;
      }
      
      public function §+!C§(param1:Boolean) : void
      {
         §-;§.SetAwake(true);
         §`x§.SetAwake(true);
         this.§3!§ = param1;
      }
      
      public function §"!M§() : Number
      {
         return this.§%!I§;
      }
      
      public function §6!4§() : Number
      {
         return this.§^!b§;
      }
      
      public function §=^§(param1:Number, param2:Number) : void
      {
         §-;§.SetAwake(true);
         §`x§.SetAwake(true);
         this.§%!I§ = param1;
         this.§^!b§ = param2;
      }
      
      public function §1!L§() : Boolean
      {
         return this.§8!_§;
      }
      
      public function §4#§(param1:Boolean) : void
      {
         §-;§.SetAwake(true);
         §`x§.SetAwake(true);
         this.§8!_§ = param1;
      }
      
      public function §#f§(param1:Number) : void
      {
         §-;§.SetAwake(true);
         §`x§.SetAwake(true);
         this.§2"§ = param1;
      }
      
      public function §9!W§() : Number
      {
         return this.§2"§;
      }
      
      public function §#<§(param1:Number) : void
      {
         §-;§.SetAwake(true);
         §`x§.SetAwake(true);
         this.§&U§ = param1;
      }
      
      public function §5J§() : Number
      {
         return this.§&U§;
      }
      
      public function §>!P§() : Number
      {
         return this.§4k§;
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
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         §%y§.SetV(_loc2_.§&r§());
         §,V§.SetV(_loc3_.§&r§());
         var _loc6_:b2Transform = _loc2_.§1?§();
         var _loc7_:b2Transform = _loc3_.§1?§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - §%y§.x;
         var _loc9_:Number = this.m_localAnchor1.y - §%y§.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - §,V§.x;
         var _loc11_:Number = this.m_localAnchor2.y - §,V§.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §1!h§ = _loc2_.§=n§;
         §9!6§ = _loc3_.§=n§;
         §%k§ = _loc2_.§1&§;
         §9!7§ = _loc3_.§1&§;
         this.§@_§.SetV(b2Math.§]!§(_loc6_.R,this.§!-§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§@_§.y - (_loc13_ + _loc9_) * this.§@_§.x;
         this.m_a2 = _loc10_ * this.§@_§.y - _loc11_ * this.§@_§.x;
         this.§ !J§ = §1!h§ + §9!6§ + §%k§ * this.m_a1 * this.m_a1 + §9!7§ * this.m_a2 * this.m_a2;
         this.§ !J§ = this.§ !J§ > Number.MIN_VALUE ? Number(1 / this.§ !J§) : Number(0);
         this.§8!"§.SetV(b2Math.§]!§(_loc6_.R,this.§#g§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§8!"§.y - (_loc13_ + _loc9_) * this.§8!"§.x;
         this.m_s2 = _loc10_ * this.§8!"§.y - _loc11_ * this.§8!"§.x;
         var _loc14_:Number = §1!h§;
         var _loc15_:Number = §9!6§;
         var _loc16_:Number = §%k§;
         var _loc17_:Number = §9!7§;
         this.§^!3§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§^!3§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§^!3§.col2.x = this.§^!3§.col1.y;
         this.§^!3§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§3!§)
         {
            _loc18_ = this.§@_§.x * _loc12_ + this.§@_§.y * _loc13_;
            if(b2Math.§&!]§(this.§^!b§ - this.§%!I§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§!!I§ = §;x§;
            }
            else if(_loc18_ <= this.§%!I§)
            {
               if(this.§!!I§ != §1p§)
               {
                  this.§!!I§ = §1p§;
                  this.§;D§.y = 0;
               }
            }
            else if(_loc18_ >= this.§^!b§)
            {
               if(this.§!!I§ != §`7§)
               {
                  this.§!!I§ = §`7§;
                  this.§;D§.y = 0;
               }
            }
            else
            {
               this.§!!I§ = §5!§;
               this.§;D§.y = 0;
            }
         }
         else
         {
            this.§!!I§ = §5!§;
         }
         if(this.§8!_§ == false)
         {
            this.§4k§ = 0;
         }
         if(param1.§-K§)
         {
            this.§;D§.x *= param1.§&s§;
            this.§;D§.y *= param1.§&s§;
            this.§4k§ *= param1.§&s§;
            _loc19_ = this.§;D§.x * this.§8!"§.x + (this.§4k§ + this.§;D§.y) * this.§@_§.x;
            _loc20_ = this.§;D§.x * this.§8!"§.y + (this.§4k§ + this.§;D§.y) * this.§@_§.y;
            _loc21_ = this.§;D§.x * this.m_s1 + (this.§4k§ + this.§;D§.y) * this.m_a1;
            _loc22_ = this.§;D§.x * this.m_s2 + (this.§4k§ + this.§;D§.y) * this.m_a2;
            _loc2_.§4!h§.x -= §1!h§ * _loc19_;
            _loc2_.§4!h§.y -= §1!h§ * _loc20_;
            _loc2_.m_angularVelocity -= §%k§ * _loc21_;
            _loc3_.§4!h§.x += §9!6§ * _loc19_;
            _loc3_.§4!h§.y += §9!6§ * _loc20_;
            _loc3_.m_angularVelocity += §9!7§ * _loc22_;
         }
         else
         {
            this.§;D§.§@!;§();
            this.§4k§ = 0;
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
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         var _loc4_:b2Vec2 = _loc2_.§4!h§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§4!h§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§8!_§ && this.§!!I§ != §;x§)
         {
            _loc13_ = this.§@_§.x * (_loc6_.x - _loc4_.x) + this.§@_§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§ !J§ * (this.§2"§ - _loc13_);
            _loc15_ = this.§4k§;
            _loc16_ = param1.§`M§ * this.§&U§;
            this.§4k§ = b2Math.§3X§(this.§4k§ + _loc14_,-_loc16_,_loc16_);
            _loc14_ = this.§4k§ - _loc15_;
            _loc8_ = _loc14_ * this.§@_§.x;
            _loc9_ = _loc14_ * this.§@_§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= §1!h§ * _loc8_;
            _loc4_.y -= §1!h§ * _loc9_;
            _loc5_ -= §%k§ * _loc10_;
            _loc6_.x += §9!6§ * _loc8_;
            _loc6_.y += §9!6§ * _loc9_;
            _loc7_ += §9!7§ * _loc11_;
         }
         var _loc12_:Number = this.§8!"§.x * (_loc6_.x - _loc4_.x) + this.§8!"§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§3!§ && this.§!!I§ != §5!§)
         {
            _loc17_ = this.§@_§.x * (_loc6_.x - _loc4_.x) + this.§@_§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§;D§.Copy();
            _loc19_ = this.§^!3§.§]j§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§;D§.§!V§(_loc19_);
            if(this.§!!I§ == §1p§)
            {
               this.§;D§.y = b2Math.§-!V§(this.§;D§.y,0);
            }
            else if(this.§!!I§ == §`7§)
            {
               this.§;D§.y = b2Math.§]!#§(this.§;D§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§;D§.y - _loc18_.y) * this.§^!3§.col2.x;
            if(this.§^!3§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§^!3§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§;D§.x = _loc21_;
            _loc19_.x = this.§;D§.x - _loc18_.x;
            _loc19_.y = this.§;D§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§8!"§.x + _loc19_.y * this.§@_§.x;
            _loc9_ = _loc19_.x * this.§8!"§.y + _loc19_.y * this.§@_§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= §1!h§ * _loc8_;
            _loc4_.y -= §1!h§ * _loc9_;
            _loc5_ -= §%k§ * _loc10_;
            _loc6_.x += §9!6§ * _loc8_;
            _loc6_.y += §9!6§ * _loc9_;
            _loc7_ += §9!7§ * _loc11_;
         }
         else
         {
            if(this.§^!3§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§^!3§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§;D§.x += _loc22_;
            _loc8_ = _loc22_ * this.§8!"§.x;
            _loc9_ = _loc22_ * this.§8!"§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= §1!h§ * _loc8_;
            _loc4_.y -= §1!h§ * _loc9_;
            _loc5_ -= §%k§ * _loc10_;
            _loc6_.x += §9!6§ * _loc8_;
            _loc6_.y += §9!6§ * _loc9_;
            _loc7_ += §9!7§ * _loc11_;
         }
         _loc2_.§4!h§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§4!h§.SetV(_loc6_);
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
         var _loc4_:b2Body = §-;§;
         var _loc5_:b2Body = §`x§;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§[_§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§[_§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - §%y§.x;
         var _loc23_:Number = this.m_localAnchor1.y - §%y§.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - §,V§.x;
         var _loc25_:Number = this.m_localAnchor2.y - §,V§.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§3!§)
         {
            this.§@_§ = b2Math.§]!§(_loc20_,this.§!-§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§@_§.y - (_loc27_ + _loc23_) * this.§@_§.x;
            this.m_a2 = _loc24_ * this.§@_§.y - _loc25_ * this.§@_§.x;
            _loc34_ = this.§@_§.x * _loc26_ + this.§@_§.y * _loc27_;
            if(b2Math.§&!]§(this.§^!b§ - this.§%!I§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§3X§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§&!]§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§%!I§)
            {
               _loc19_ = b2Math.§3X§(_loc34_ - this.§%!I§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§%!I§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§^!b§)
            {
               _loc19_ = b2Math.§3X§(_loc34_ - this.§^!b§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§^!b§;
               _loc18_ = true;
            }
         }
         this.§8!"§ = b2Math.§]!§(_loc20_,this.§#g§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§8!"§.y - (_loc27_ + _loc23_) * this.§8!"§.x;
         this.m_s2 = _loc24_ * this.§8!"§.y - _loc25_ * this.§8!"§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§8!"§.x * _loc26_ + this.§8!"§.y * _loc27_;
         _loc16_ = b2Math.§-!V§(_loc16_,b2Math.§&!]§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = §1!h§;
            _loc13_ = §9!6§;
            _loc14_ = §%k§;
            _loc15_ = §9!7§;
            this.§^!3§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§^!3§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§^!3§.col2.x = this.§^!3§.col1.y;
            this.§^!3§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§^!3§.§]j§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = §1!h§;
            _loc13_ = §9!6§;
            _loc14_ = §%k§;
            _loc15_ = §9!7§;
            _loc35_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            if(_loc35_ != 0)
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
         var _loc30_:Number = _loc28_.x * this.§8!"§.x + _loc28_.y * this.§@_§.x;
         var _loc31_:Number = _loc28_.x * this.§8!"§.y + _loc28_.y * this.§@_§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= §1!h§ * _loc30_;
         _loc6_.y -= §1!h§ * _loc31_;
         _loc7_ -= §%k§ * _loc32_;
         _loc8_.x += §9!6§ * _loc30_;
         _loc8_.y += §9!6§ * _loc31_;
         _loc9_ += §9!7§ * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§"!_§();
         _loc5_.§"!_§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
