package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §>!C§:b2Vec2;
      
      private var §4a§:b2Vec2;
      
      private var §try§:b2Vec2;
      
      private var §;!]§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §?!S§:b2Mat22;
      
      private var §&""§:b2Vec2;
      
      private var §1!F§:Number;
      
      private var §^!f§:Number;
      
      private var §#g§:Number;
      
      private var §9M§:Number;
      
      private var §!!V§:Number;
      
      private var §!z§:Number;
      
      private var §>7§:Boolean;
      
      private var §%A§:Boolean;
      
      private var §=H§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§>!C§ = new b2Vec2();
         this.§4a§ = new b2Vec2();
         this.§try§ = new b2Vec2();
         this.§;!]§ = new b2Vec2();
         this.§?!S§ = new b2Mat22();
         this.§&""§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'G§);
         this.m_localAnchor2.SetV(param1.§true§);
         this.§>!C§.SetV(param1.§ !S§);
         this.§4a§.x = -this.§>!C§.y;
         this.§4a§.y = this.§>!C§.x;
         this.§&""§.§+J§();
         this.§1!F§ = 0;
         this.§^!f§ = 0;
         this.§#g§ = param1.§;!R§;
         this.§9M§ = param1.§ use§;
         this.§!!V§ = param1.§;!Q§;
         this.§!z§ = param1.motorSpeed;
         this.§>7§ = param1.§&!A§;
         this.§%A§ = param1.§ !q§;
         this.§=H§ = b2internal::]B;
         this.§try§.§+J§();
         this.§;!]§.§+J§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§&""§.x * this.§;!]§.x + (this.§^!f§ + this.§&""§.y) * this.§try§.x),param1 * (this.§&""§.x * this.§;!]§.y + (this.§^!f§ + this.§&""§.y) * this.§try§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§&""§.y;
      }
      
      public function §+t§() : Number
      {
         var _loc1_:b2Body = b2internal::&A;
         var _loc2_:b2Body = b2internal::4!d;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§2^§(this.§>!C§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §#;§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::&A;
         var _loc2_:b2Body = b2internal::4!d;
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
         var _loc15_:b2Vec2 = _loc1_.§2^§(this.§>!C§);
         var _loc16_:b2Vec2 = _loc1_.§%!<§;
         var _loc17_:b2Vec2 = _loc2_.§%!<§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §%!u§() : Boolean
      {
         return this.§>7§;
      }
      
      public function §`9§(param1:Boolean) : void
      {
         b2internal::&A.SetAwake(true);
         b2internal::4!d.SetAwake(true);
         this.§>7§ = param1;
      }
      
      public function §+!-§() : Number
      {
         return this.§#g§;
      }
      
      public function §6X§() : Number
      {
         return this.§9M§;
      }
      
      public function §;!2§(param1:Number, param2:Number) : void
      {
         b2internal::&A.SetAwake(true);
         b2internal::4!d.SetAwake(true);
         this.§#g§ = param1;
         this.§9M§ = param2;
      }
      
      public function §5!r§() : Boolean
      {
         return this.§%A§;
      }
      
      public function §!""§(param1:Boolean) : void
      {
         b2internal::&A.SetAwake(true);
         b2internal::4!d.SetAwake(true);
         this.§%A§ = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::&A.SetAwake(true);
         b2internal::4!d.SetAwake(true);
         this.§!z§ = param1;
      }
      
      public function §3S§() : Number
      {
         return this.§!z§;
      }
      
      public function §;!%§(param1:Number) : void
      {
         b2internal::&A.SetAwake(true);
         b2internal::4!d.SetAwake(true);
         this.§!!V§ = param1;
      }
      
      public function §@!2§() : Number
      {
         return this.§!!V§;
      }
      
      public function § o§() : Number
      {
         return this.§^!f§;
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
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         b2internal::9&.SetV(_loc2_.§6!#§());
         b2internal::2![.SetV(_loc3_.§6!#§());
         var _loc6_:b2Transform = _loc2_.§%J§();
         var _loc7_:b2Transform = _loc3_.§%J§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::9&.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::9&.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::2![.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::2![.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §`!Q§ = _loc2_.§3!q§;
         §'!$§ = _loc3_.§3!q§;
         §3<§ = _loc2_.§2!1§;
         §]!%§ = _loc3_.§2!1§;
         this.§try§.SetV(b2Math.§[!%§(_loc6_.R,this.§>!C§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§try§.y - (_loc13_ + _loc9_) * this.§try§.x;
         this.m_a2 = _loc10_ * this.§try§.y - _loc11_ * this.§try§.x;
         this.§1!F§ = b2internal::`!Q + b2internal::'!$ + b2internal::3< * this.m_a1 * this.m_a1 + b2internal::]!% * this.m_a2 * this.m_a2;
         this.§1!F§ = this.§1!F§ > Number.MIN_VALUE ? Number(1 / this.§1!F§) : Number(0);
         this.§;!]§.SetV(b2Math.§[!%§(_loc6_.R,this.§4a§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§;!]§.y - (_loc13_ + _loc9_) * this.§;!]§.x;
         this.m_s2 = _loc10_ * this.§;!]§.y - _loc11_ * this.§;!]§.x;
         var _loc14_:Number = b2internal::`!Q;
         var _loc15_:Number = b2internal::'!$;
         var _loc16_:Number = b2internal::3<;
         var _loc17_:Number = b2internal::]!%;
         this.§?!S§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§?!S§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§?!S§.col2.x = this.§?!S§.col1.y;
         this.§?!S§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§>7§)
         {
            _loc18_ = this.§try§.x * _loc12_ + this.§try§.y * _loc13_;
            if(b2Math.§0@§(this.§9M§ - this.§#g§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§=H§ = b2internal::3!`;
            }
            else if(_loc18_ <= this.§#g§)
            {
               if(this.§=H§ != b2internal::1l)
               {
                  this.§=H§ = b2internal::1l;
                  this.§&""§.y = 0;
               }
            }
            else if(_loc18_ >= this.§9M§)
            {
               if(this.§=H§ != b2internal::4!S)
               {
                  this.§=H§ = b2internal::4!S;
                  this.§&""§.y = 0;
               }
            }
            else
            {
               this.§=H§ = b2internal::]B;
               this.§&""§.y = 0;
            }
         }
         else
         {
            this.§=H§ = b2internal::]B;
         }
         if(this.§%A§ == false)
         {
            this.§^!f§ = 0;
         }
         if(param1.§9!w§)
         {
            this.§&""§.x *= param1.§[!4§;
            this.§&""§.y *= param1.§[!4§;
            this.§^!f§ *= param1.§[!4§;
            _loc19_ = this.§&""§.x * this.§;!]§.x + (this.§^!f§ + this.§&""§.y) * this.§try§.x;
            _loc20_ = this.§&""§.x * this.§;!]§.y + (this.§^!f§ + this.§&""§.y) * this.§try§.y;
            _loc21_ = this.§&""§.x * this.m_s1 + (this.§^!f§ + this.§&""§.y) * this.m_a1;
            _loc22_ = this.§&""§.x * this.m_s2 + (this.§^!f§ + this.§&""§.y) * this.m_a2;
            _loc2_.§%!<§.x -= b2internal::`!Q * _loc19_;
            _loc2_.§%!<§.y -= b2internal::`!Q * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::3< * _loc21_;
            _loc3_.§%!<§.x += b2internal::'!$ * _loc19_;
            _loc3_.§%!<§.y += b2internal::'!$ * _loc20_;
            _loc3_.m_angularVelocity += b2internal::]!% * _loc22_;
         }
         else
         {
            this.§&""§.§+J§();
            this.§^!f§ = 0;
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
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         var _loc4_:b2Vec2 = _loc2_.§%!<§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§%!<§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§%A§ && this.§=H§ != b2internal::3!`)
         {
            _loc13_ = this.§try§.x * (_loc6_.x - _loc4_.x) + this.§try§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§1!F§ * (this.§!z§ - _loc13_);
            _loc15_ = this.§^!f§;
            _loc16_ = param1.§?!C§ * this.§!!V§;
            this.§^!f§ = b2Math.§?!?§(this.§^!f§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§^!f§ - _loc15_) * this.§try§.x;
            _loc9_ = _loc14_ * this.§try§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::`!Q * _loc8_;
            _loc4_.y -= b2internal::`!Q * _loc9_;
            _loc5_ -= b2internal::3< * _loc10_;
            _loc6_.x += b2internal::'!$ * _loc8_;
            _loc6_.y += b2internal::'!$ * _loc9_;
            _loc7_ += b2internal::]!% * _loc11_;
         }
         var _loc12_:Number = this.§;!]§.x * (_loc6_.x - _loc4_.x) + this.§;!]§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§>7§ && this.§=H§ != b2internal::]B)
         {
            _loc17_ = this.§try§.x * (_loc6_.x - _loc4_.x) + this.§try§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§&""§.Copy();
            _loc19_ = this.§?!S§.§,!&§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§&""§.§2!3§(_loc19_);
            if(this.§=H§ == b2internal::1l)
            {
               this.§&""§.y = b2Math.§&h§(this.§&""§.y,0);
            }
            else if(this.§=H§ == b2internal::4!S)
            {
               this.§&""§.y = b2Math.§;!t§(this.§&""§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§&""§.y - _loc18_.y) * this.§?!S§.col2.x;
            if(this.§?!S§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§?!S§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§&""§.x = _loc21_;
            _loc19_.x = this.§&""§.x - _loc18_.x;
            _loc19_.y = this.§&""§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§;!]§.x + _loc19_.y * this.§try§.x;
            _loc9_ = _loc19_.x * this.§;!]§.y + _loc19_.y * this.§try§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::`!Q * _loc8_;
            _loc4_.y -= b2internal::`!Q * _loc9_;
            _loc5_ -= b2internal::3< * _loc10_;
            _loc6_.x += b2internal::'!$ * _loc8_;
            _loc6_.y += b2internal::'!$ * _loc9_;
            _loc7_ += b2internal::]!% * _loc11_;
         }
         else
         {
            if(this.§?!S§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§?!S§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§&""§.x += _loc22_;
            _loc8_ = _loc22_ * this.§;!]§.x;
            _loc9_ = _loc22_ * this.§;!]§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::`!Q * _loc8_;
            _loc4_.y -= b2internal::`!Q * _loc9_;
            _loc5_ -= b2internal::3< * _loc10_;
            _loc6_.x += b2internal::'!$ * _loc8_;
            _loc6_.y += b2internal::'!$ * _loc9_;
            _loc7_ += b2internal::]!% * _loc11_;
         }
         _loc2_.§%!<§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§%!<§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§&!i§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§&!i§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::9&.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::9&.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::2![.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::2![.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§>7§)
         {
            this.§try§ = b2Math.§[!%§(_loc20_,this.§>!C§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§try§.y - (_loc27_ + _loc23_) * this.§try§.x;
            this.m_a2 = _loc24_ * this.§try§.y - _loc25_ * this.§try§.x;
            _loc34_ = this.§try§.x * _loc26_ + this.§try§.y * _loc27_;
            if(b2Math.§0@§(this.§9M§ - this.§#g§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§?!?§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§0@§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§#g§)
            {
               _loc19_ = b2Math.§?!?§(_loc34_ - this.§#g§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§#g§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§9M§)
            {
               _loc19_ = b2Math.§?!?§(_loc34_ - this.§9M§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§9M§;
               _loc18_ = true;
            }
         }
         this.§;!]§ = b2Math.§[!%§(_loc20_,this.§4a§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§;!]§.y - (_loc27_ + _loc23_) * this.§;!]§.x;
         this.m_s2 = _loc24_ * this.§;!]§.y - _loc25_ * this.§;!]§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§;!]§.x * _loc26_ + this.§;!]§.y * _loc27_;
         _loc16_ = b2Math.§&h§(_loc16_,b2Math.§0@§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::`!Q;
            _loc13_ = b2internal::'!$;
            _loc14_ = b2internal::3<;
            _loc15_ = b2internal::]!%;
            this.§?!S§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§?!S§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§?!S§.col2.x = this.§?!S§.col1.y;
            this.§?!S§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§?!S§.§,!&§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::`!Q;
            _loc13_ = b2internal::'!$;
            _loc14_ = b2internal::3<;
            _loc15_ = b2internal::]!%;
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
         var _loc30_:Number = _loc28_.x * this.§;!]§.x + _loc28_.y * this.§try§.x;
         var _loc31_:Number = _loc28_.x * this.§;!]§.y + _loc28_.y * this.§try§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::`!Q * _loc30_;
         _loc6_.y -= b2internal::`!Q * _loc31_;
         _loc7_ -= b2internal::3< * _loc32_;
         _loc8_.x += b2internal::'!$ * _loc30_;
         _loc8_.y += b2internal::'!$ * _loc31_;
         _loc9_ += b2internal::]!% * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§@!1§();
         _loc5_.§@!1§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
