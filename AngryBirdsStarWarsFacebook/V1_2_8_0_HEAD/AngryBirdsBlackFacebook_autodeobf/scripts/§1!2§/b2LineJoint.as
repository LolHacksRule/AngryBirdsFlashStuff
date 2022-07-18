package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §"j§:b2Vec2;
      
      private var §-#=§:b2Vec2;
      
      private var §<#§:b2Vec2;
      
      private var §2#U§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<i§:b2Mat22;
      
      private var §##,§:b2Vec2;
      
      private var §99§:Number;
      
      private var §4#5§:Number;
      
      private var §2!<§:Number;
      
      private var §%!N§:Number;
      
      private var §'!9§:Number;
      
      private var §7#R§:Number;
      
      private var §'s§:Boolean;
      
      private var §9!X§:Boolean;
      
      private var §<!G§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§"j§ = new b2Vec2();
         this.§-#=§ = new b2Vec2();
         this.§<#§ = new b2Vec2();
         this.§2#U§ = new b2Vec2();
         this.§<i§ = new b2Mat22();
         this.§##,§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!"4§);
         this.m_localAnchor2.SetV(param1.§#"B§);
         this.§"j§.SetV(param1.§&#M§);
         this.§-#=§.x = -this.§"j§.y;
         this.§-#=§.y = this.§"j§.x;
         this.§##,§.§&"Q§();
         this.§99§ = 0;
         this.§4#5§ = 0;
         this.§2!<§ = param1.§2!@§;
         this.§%!N§ = param1.§5!F§;
         this.§'!9§ = param1.§0A§;
         this.§7#R§ = param1.motorSpeed;
         this.§'s§ = param1.§#d§;
         this.§9!X§ = param1.§!#G§;
         this.§<!G§ = b2internal::"!G;
         this.§<#§.§&"Q§();
         this.§2#U§.§&"Q§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!g.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§##,§.x * this.§2#U§.x + (this.§4#5§ + this.§##,§.y) * this.§<#§.x),param1 * (this.§##,§.x * this.§2#U§.y + (this.§4#5§ + this.§##,§.y) * this.§<#§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§##,§.y;
      }
      
      public function §##2§() : Number
      {
         var _loc1_:b2Body = b2internal::2!g;
         var _loc2_:b2Body = b2internal:: "z;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§8!b§(this.§"j§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §&!Z§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!g;
         var _loc2_:b2Body = b2internal:: "z;
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
         var _loc15_:b2Vec2 = _loc1_.§8!b§(this.§"j§);
         var _loc16_:b2Vec2 = _loc1_.§ #`§;
         var _loc17_:b2Vec2 = _loc2_.§ #`§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §['§() : Boolean
      {
         return this.§'s§;
      }
      
      public function §8""§(param1:Boolean) : void
      {
         b2internal::2!g.SetAwake(true);
         b2internal:: "z.SetAwake(true);
         this.§'s§ = param1;
      }
      
      public function §3!;§() : Number
      {
         return this.§2!<§;
      }
      
      public function §+"!§() : Number
      {
         return this.§%!N§;
      }
      
      public function § !L§(param1:Number, param2:Number) : void
      {
         b2internal::2!g.SetAwake(true);
         b2internal:: "z.SetAwake(true);
         this.§2!<§ = param1;
         this.§%!N§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§9!X§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::2!g.SetAwake(true);
         b2internal:: "z.SetAwake(true);
         this.§9!X§ = param1;
      }
      
      public function §8#S§(param1:Number) : void
      {
         b2internal::2!g.SetAwake(true);
         b2internal:: "z.SetAwake(true);
         this.§7#R§ = param1;
      }
      
      public function §+#0§() : Number
      {
         return this.§7#R§;
      }
      
      public function §8"#§(param1:Number) : void
      {
         b2internal::2!g.SetAwake(true);
         b2internal:: "z.SetAwake(true);
         this.§'!9§ = param1;
      }
      
      public function §?!V§() : Number
      {
         return this.§'!9§;
      }
      
      public function §]@§() : Number
      {
         return this.§4#5§;
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
         var _loc2_:b2Body = b2internal::2!g;
         var _loc3_:b2Body = b2internal:: "z;
         b2internal::[#%.SetV(_loc2_.§]";§());
         b2internal::&"8.SetV(_loc3_.§]";§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::[#%.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::[#%.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::&"8.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::&"8.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §<M§ = _loc2_.§3#>§;
         §`"?§ = _loc3_.§3#>§;
         §]r§ = _loc2_.§3"y§;
         §-w§ = _loc3_.§3"y§;
         this.§<#§.SetV(b2Math.§="L§(_loc6_.R,this.§"j§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§<#§.y - (_loc13_ + _loc9_) * this.§<#§.x;
         this.m_a2 = _loc10_ * this.§<#§.y - _loc11_ * this.§<#§.x;
         this.§99§ = b2internal::<M + b2internal::`"? + b2internal::]r * this.m_a1 * this.m_a1 + b2internal::-w * this.m_a2 * this.m_a2;
         this.§99§ = this.§99§ > Number.MIN_VALUE ? Number(1 / this.§99§) : Number(0);
         this.§2#U§.SetV(b2Math.§="L§(_loc6_.R,this.§-#=§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§2#U§.y - (_loc13_ + _loc9_) * this.§2#U§.x;
         this.m_s2 = _loc10_ * this.§2#U§.y - _loc11_ * this.§2#U§.x;
         var _loc14_:Number = b2internal::<M;
         var _loc15_:Number = b2internal::`"?;
         var _loc16_:Number = b2internal::]r;
         var _loc17_:Number = b2internal::-w;
         this.§<i§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§<i§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§<i§.col2.x = this.§<i§.col1.y;
         this.§<i§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§'s§)
         {
            _loc18_ = this.§<#§.x * _loc12_ + this.§<#§.y * _loc13_;
            if(b2Math.§6"%§(this.§%!N§ - this.§2!<§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§<!G§ = b2internal::?!b;
            }
            else if(_loc18_ <= this.§2!<§)
            {
               if(this.§<!G§ != b2internal::5#C)
               {
                  this.§<!G§ = b2internal::5#C;
                  this.§##,§.y = 0;
               }
            }
            else if(_loc18_ >= this.§%!N§)
            {
               if(this.§<!G§ != b2internal::#"e)
               {
                  this.§<!G§ = b2internal::#"e;
                  this.§##,§.y = 0;
               }
            }
            else
            {
               this.§<!G§ = b2internal::"!G;
               this.§##,§.y = 0;
            }
         }
         else
         {
            this.§<!G§ = b2internal::"!G;
         }
         if(this.§9!X§ == false)
         {
            this.§4#5§ = 0;
         }
         if(param1.§-'§)
         {
            this.§##,§.x *= param1.§8"]§;
            this.§##,§.y *= param1.§8"]§;
            this.§4#5§ *= param1.§8"]§;
            _loc19_ = this.§##,§.x * this.§2#U§.x + (this.§4#5§ + this.§##,§.y) * this.§<#§.x;
            _loc20_ = this.§##,§.x * this.§2#U§.y + (this.§4#5§ + this.§##,§.y) * this.§<#§.y;
            _loc21_ = this.§##,§.x * this.m_s1 + (this.§4#5§ + this.§##,§.y) * this.m_a1;
            _loc22_ = this.§##,§.x * this.m_s2 + (this.§4#5§ + this.§##,§.y) * this.m_a2;
            _loc2_.§ #`§.x -= b2internal::<M * _loc19_;
            _loc2_.§ #`§.y -= b2internal::<M * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::]r * _loc21_;
            _loc3_.§ #`§.x += b2internal::`"? * _loc19_;
            _loc3_.§ #`§.y += b2internal::`"? * _loc20_;
            _loc3_.m_angularVelocity += b2internal::-w * _loc22_;
         }
         else
         {
            this.§##,§.§&"Q§();
            this.§4#5§ = 0;
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
         var _loc2_:b2Body = b2internal::2!g;
         var _loc3_:b2Body = b2internal:: "z;
         var _loc4_:b2Vec2 = _loc2_.§ #`§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§ #`§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§9!X§ && this.§<!G§ != b2internal::?!b)
         {
            _loc13_ = this.§<#§.x * (_loc6_.x - _loc4_.x) + this.§<#§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§99§ * (this.§7#R§ - _loc13_);
            _loc15_ = this.§4#5§;
            _loc16_ = param1.§1!O§ * this.§'!9§;
            this.§4#5§ = b2Math.§<"X§(this.§4#5§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§4#5§ - _loc15_) * this.§<#§.x;
            _loc9_ = _loc14_ * this.§<#§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::<M * _loc8_;
            _loc4_.y -= b2internal::<M * _loc9_;
            _loc5_ -= b2internal::]r * _loc10_;
            _loc6_.x += b2internal::`"? * _loc8_;
            _loc6_.y += b2internal::`"? * _loc9_;
            _loc7_ += b2internal::-w * _loc11_;
         }
         var _loc12_:Number = this.§2#U§.x * (_loc6_.x - _loc4_.x) + this.§2#U§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§'s§ && this.§<!G§ != b2internal::"!G)
         {
            _loc17_ = this.§<#§.x * (_loc6_.x - _loc4_.x) + this.§<#§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§##,§.Copy();
            _loc19_ = this.§<i§.§=#6§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§##,§.§ true§(_loc19_);
            if(this.§<!G§ == b2internal::5#C)
            {
               this.§##,§.y = b2Math.§<#N§(this.§##,§.y,0);
            }
            else if(this.§<!G§ == b2internal::#"e)
            {
               this.§##,§.y = b2Math.§'#Z§(this.§##,§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§##,§.y - _loc18_.y) * this.§<i§.col2.x;
            if(this.§<i§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§<i§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§##,§.x = _loc21_;
            _loc19_.x = this.§##,§.x - _loc18_.x;
            _loc19_.y = this.§##,§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§2#U§.x + _loc19_.y * this.§<#§.x;
            _loc9_ = _loc19_.x * this.§2#U§.y + _loc19_.y * this.§<#§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::<M * _loc8_;
            _loc4_.y -= b2internal::<M * _loc9_;
            _loc5_ -= b2internal::]r * _loc10_;
            _loc6_.x += b2internal::`"? * _loc8_;
            _loc6_.y += b2internal::`"? * _loc9_;
            _loc7_ += b2internal::-w * _loc11_;
         }
         else
         {
            if(this.§<i§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§<i§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§##,§.x += _loc22_;
            _loc8_ = _loc22_ * this.§2#U§.x;
            _loc9_ = _loc22_ * this.§2#U§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::<M * _loc8_;
            _loc4_.y -= b2internal::<M * _loc9_;
            _loc5_ -= b2internal::]r * _loc10_;
            _loc6_.x += b2internal::`"? * _loc8_;
            _loc6_.y += b2internal::`"? * _loc9_;
            _loc7_ += b2internal::-w * _loc11_;
         }
         _loc2_.§ #`§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§ #`§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::2!g;
         var _loc5_:b2Body = b2internal:: "z;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§-"f§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§-"f§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::[#%.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::[#%.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::&"8.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::&"8.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§'s§)
         {
            this.§<#§ = b2Math.§="L§(_loc20_,this.§"j§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§<#§.y - (_loc27_ + _loc23_) * this.§<#§.x;
            this.m_a2 = _loc24_ * this.§<#§.y - _loc25_ * this.§<#§.x;
            _loc34_ = this.§<#§.x * _loc26_ + this.§<#§.y * _loc27_;
            if(b2Math.§6"%§(this.§%!N§ - this.§2!<§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§<"X§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§6"%§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§2!<§)
            {
               _loc19_ = b2Math.§<"X§(_loc34_ - this.§2!<§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§2!<§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§%!N§)
            {
               _loc19_ = b2Math.§<"X§(_loc34_ - this.§%!N§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§%!N§;
               _loc18_ = true;
            }
         }
         this.§2#U§ = b2Math.§="L§(_loc20_,this.§-#=§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§2#U§.y - (_loc27_ + _loc23_) * this.§2#U§.x;
         this.m_s2 = _loc24_ * this.§2#U§.y - _loc25_ * this.§2#U§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§2#U§.x * _loc26_ + this.§2#U§.y * _loc27_;
         _loc16_ = b2Math.§<#N§(_loc16_,b2Math.§6"%§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::<M;
            _loc13_ = b2internal::`"?;
            _loc14_ = b2internal::]r;
            _loc15_ = b2internal::-w;
            this.§<i§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§<i§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§<i§.col2.x = this.§<i§.col1.y;
            this.§<i§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§<i§.§=#6§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::<M;
            _loc13_ = b2internal::`"?;
            _loc14_ = b2internal::]r;
            _loc15_ = b2internal::-w;
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
         var _loc30_:Number = _loc28_.x * this.§2#U§.x + _loc28_.y * this.§<#§.x;
         var _loc31_:Number = _loc28_.x * this.§2#U§.y + _loc28_.y * this.§<#§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::<M * _loc30_;
         _loc6_.y -= b2internal::<M * _loc31_;
         _loc7_ -= b2internal::]r * _loc32_;
         _loc8_.x += b2internal::`"? * _loc30_;
         _loc8_.y += b2internal::`"? * _loc31_;
         _loc9_ += b2internal::-w * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§`"a§();
         _loc5_.§`"a§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
