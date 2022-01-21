package §;N§
{
   import §!R§.b2Mat22;
   import §!R§.b2Math;
   import §!R§.b2Transform;
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §1B§.b2TimeStep;
   import §9i§.b2Settings;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §case§:b2Vec2;
      
      private var §;r§:b2Vec2;
      
      private var §?!6§:b2Vec2;
      
      private var §#K§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §6!S§:b2Mat22;
      
      private var §%z§:b2Vec2;
      
      private var final:Number;
      
      private var §^!k§:Number;
      
      private var §8X§:Number;
      
      private var §2-§:Number;
      
      private var §]!j§:Number;
      
      private var §0!g§:Number;
      
      private var §!!&§:Boolean;
      
      private var § A§:Boolean;
      
      private var §?9§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§case§ = new b2Vec2();
         this.§;r§ = new b2Vec2();
         this.§?!6§ = new b2Vec2();
         this.§#K§ = new b2Vec2();
         this.§6!S§ = new b2Mat22();
         this.§%z§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§4D§);
         this.m_localAnchor2.SetV(param1.§@@§);
         this.§case§.SetV(param1.§&!G§);
         this.§;r§.x = -this.§case§.y;
         this.§;r§.y = this.§case§.x;
         this.§%z§.§"9§();
         this.final = 0;
         this.§^!k§ = 0;
         this.§8X§ = param1.§^!C§;
         this.§2-§ = param1.§-$§;
         this.§]!j§ = param1.§';§;
         this.§0!g§ = param1.motorSpeed;
         this.§!!&§ = param1.§'#§;
         this.§ A§ = param1.§8%§;
         this.§?9§ = b2internal::>4;
         this.§?!6§.§"9§();
         this.§#K§.§"9§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: each.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8[.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§%z§.x * this.§#K§.x + (this.§^!k§ + this.§%z§.y) * this.§?!6§.x),param1 * (this.§%z§.x * this.§#K§.y + (this.§^!k§ + this.§%z§.y) * this.§?!6§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§%z§.y;
      }
      
      public function §'! §() : Number
      {
         var _loc1_:b2Body = b2internal:: each;
         var _loc2_:b2Body = b2internal::8[;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§'!%§(this.§case§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §;!Q§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal:: each;
         var _loc2_:b2Body = b2internal::8[;
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
         var _loc15_:b2Vec2 = _loc1_.§'!%§(this.§case§);
         var _loc16_:b2Vec2 = _loc1_.§5!m§;
         var _loc17_:b2Vec2 = _loc2_.§5!m§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §5I§() : Boolean
      {
         return this.§!!&§;
      }
      
      public function §3Q§(param1:Boolean) : void
      {
         b2internal:: each.SetAwake(true);
         b2internal::8[.SetAwake(true);
         this.§!!&§ = param1;
      }
      
      public function §9_§() : Number
      {
         return this.§8X§;
      }
      
      public function §?!P§() : Number
      {
         return this.§2-§;
      }
      
      public function § !&§(param1:Number, param2:Number) : void
      {
         b2internal:: each.SetAwake(true);
         b2internal::8[.SetAwake(true);
         this.§8X§ = param1;
         this.§2-§ = param2;
      }
      
      public function §1,§() : Boolean
      {
         return this.§ A§;
      }
      
      public function §3C§(param1:Boolean) : void
      {
         b2internal:: each.SetAwake(true);
         b2internal::8[.SetAwake(true);
         this.§ A§ = param1;
      }
      
      public function §8D§(param1:Number) : void
      {
         b2internal:: each.SetAwake(true);
         b2internal::8[.SetAwake(true);
         this.§0!g§ = param1;
      }
      
      public function §%$§() : Number
      {
         return this.§0!g§;
      }
      
      public function §@!6§(param1:Number) : void
      {
         b2internal:: each.SetAwake(true);
         b2internal::8[.SetAwake(true);
         this.§]!j§ = param1;
      }
      
      public function §%!m§() : Number
      {
         return this.§]!j§;
      }
      
      public function §<B§() : Number
      {
         return this.§^!k§;
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
         var _loc2_:b2Body = b2internal:: each;
         var _loc3_:b2Body = b2internal::8[;
         b2internal::24.SetV(_loc2_.§#]§());
         b2internal::@5.SetV(_loc3_.§#]§());
         var _loc6_:b2Transform = _loc2_.§&0§();
         var _loc7_:b2Transform = _loc3_.§&0§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::24.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::24.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::@5.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::@5.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §9l§ = _loc2_.§#@§;
         §0A§ = _loc3_.§#@§;
         §?l§ = _loc2_.§<3§;
         §"!%§ = _loc3_.§<3§;
         this.§?!6§.SetV(b2Math.§"]§(_loc6_.R,this.§case§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§?!6§.y - (_loc13_ + _loc9_) * this.§?!6§.x;
         this.m_a2 = _loc10_ * this.§?!6§.y - _loc11_ * this.§?!6§.x;
         this.final = b2internal::9l + b2internal::0A + b2internal::?l * this.m_a1 * this.m_a1 + b2internal::"!% * this.m_a2 * this.m_a2;
         this.final = this.final > Number.MIN_VALUE ? Number(1 / this.final) : Number(0);
         this.§#K§.SetV(b2Math.§"]§(_loc6_.R,this.§;r§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§#K§.y - (_loc13_ + _loc9_) * this.§#K§.x;
         this.m_s2 = _loc10_ * this.§#K§.y - _loc11_ * this.§#K§.x;
         var _loc14_:Number = b2internal::9l;
         var _loc15_:Number = b2internal::0A;
         var _loc16_:Number = b2internal::?l;
         var _loc17_:Number = b2internal::"!%;
         this.§6!S§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§6!S§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§6!S§.col2.x = this.§6!S§.col1.y;
         this.§6!S§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§!!&§)
         {
            _loc18_ = this.§?!6§.x * _loc12_ + this.§?!6§.y * _loc13_;
            if(b2Math.§'s§(this.§2-§ - this.§8X§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§?9§ = b2internal::[!P;
            }
            else if(_loc18_ <= this.§8X§)
            {
               if(this.§?9§ != b2internal::9!M)
               {
                  this.§?9§ = b2internal::9!M;
                  this.§%z§.y = 0;
               }
            }
            else if(_loc18_ >= this.§2-§)
            {
               if(this.§?9§ != b2internal:: !,)
               {
                  this.§?9§ = b2internal:: !,;
                  this.§%z§.y = 0;
               }
            }
            else
            {
               this.§?9§ = b2internal::>4;
               this.§%z§.y = 0;
            }
         }
         else
         {
            this.§?9§ = b2internal::>4;
         }
         if(this.§ A§ == false)
         {
            this.§^!k§ = 0;
         }
         if(param1.§=s§)
         {
            this.§%z§.x *= param1.§;%§;
            this.§%z§.y *= param1.§;%§;
            this.§^!k§ *= param1.§;%§;
            _loc19_ = this.§%z§.x * this.§#K§.x + (this.§^!k§ + this.§%z§.y) * this.§?!6§.x;
            _loc20_ = this.§%z§.x * this.§#K§.y + (this.§^!k§ + this.§%z§.y) * this.§?!6§.y;
            _loc21_ = this.§%z§.x * this.m_s1 + (this.§^!k§ + this.§%z§.y) * this.m_a1;
            _loc22_ = this.§%z§.x * this.m_s2 + (this.§^!k§ + this.§%z§.y) * this.m_a2;
            _loc2_.§5!m§.x -= b2internal::9l * _loc19_;
            _loc2_.§5!m§.y -= b2internal::9l * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::?l * _loc21_;
            _loc3_.§5!m§.x += b2internal::0A * _loc19_;
            _loc3_.§5!m§.y += b2internal::0A * _loc20_;
            _loc3_.m_angularVelocity += b2internal::"!% * _loc22_;
         }
         else
         {
            this.§%z§.§"9§();
            this.§^!k§ = 0;
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
         var _loc2_:b2Body = b2internal:: each;
         var _loc3_:b2Body = b2internal::8[;
         var _loc4_:b2Vec2 = _loc2_.§5!m§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§5!m§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§ A§ && this.§?9§ != b2internal::[!P)
         {
            _loc13_ = this.§?!6§.x * (_loc6_.x - _loc4_.x) + this.§?!6§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.final * (this.§0!g§ - _loc13_);
            _loc15_ = this.§^!k§;
            _loc16_ = param1.§#"§ * this.§]!j§;
            this.§^!k§ = b2Math.§%!i§(this.§^!k§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§^!k§ - _loc15_) * this.§?!6§.x;
            _loc9_ = _loc14_ * this.§?!6§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::9l * _loc8_;
            _loc4_.y -= b2internal::9l * _loc9_;
            _loc5_ -= b2internal::?l * _loc10_;
            _loc6_.x += b2internal::0A * _loc8_;
            _loc6_.y += b2internal::0A * _loc9_;
            _loc7_ += b2internal::"!% * _loc11_;
         }
         var _loc12_:Number = this.§#K§.x * (_loc6_.x - _loc4_.x) + this.§#K§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§!!&§ && this.§?9§ != b2internal::>4)
         {
            _loc17_ = this.§?!6§.x * (_loc6_.x - _loc4_.x) + this.§?!6§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§%z§.Copy();
            _loc19_ = this.§6!S§.§5d§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§%z§.§"W§(_loc19_);
            if(this.§?9§ == b2internal::9!M)
            {
               this.§%z§.y = b2Math.§@!Q§(this.§%z§.y,0);
            }
            else if(this.§?9§ == b2internal:: !,)
            {
               this.§%z§.y = b2Math.§]!W§(this.§%z§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§%z§.y - _loc18_.y) * this.§6!S§.col2.x;
            if(this.§6!S§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§6!S§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§%z§.x = _loc21_;
            _loc19_.x = this.§%z§.x - _loc18_.x;
            _loc19_.y = this.§%z§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§#K§.x + _loc19_.y * this.§?!6§.x;
            _loc9_ = _loc19_.x * this.§#K§.y + _loc19_.y * this.§?!6§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::9l * _loc8_;
            _loc4_.y -= b2internal::9l * _loc9_;
            _loc5_ -= b2internal::?l * _loc10_;
            _loc6_.x += b2internal::0A * _loc8_;
            _loc6_.y += b2internal::0A * _loc9_;
            _loc7_ += b2internal::"!% * _loc11_;
         }
         else
         {
            if(this.§6!S§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§6!S§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§%z§.x += _loc22_;
            _loc8_ = _loc22_ * this.§#K§.x;
            _loc9_ = _loc22_ * this.§#K§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::9l * _loc8_;
            _loc4_.y -= b2internal::9l * _loc9_;
            _loc5_ -= b2internal::?l * _loc10_;
            _loc6_.x += b2internal::0A * _loc8_;
            _loc6_.y += b2internal::0A * _loc9_;
            _loc7_ += b2internal::"!% * _loc11_;
         }
         _loc2_.§5!m§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§5!m§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal:: each;
         var _loc5_:b2Body = b2internal::8[;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§`!$§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§`!$§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::24.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::24.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::@5.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::@5.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§!!&§)
         {
            this.§?!6§ = b2Math.§"]§(_loc20_,this.§case§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§?!6§.y - (_loc27_ + _loc23_) * this.§?!6§.x;
            this.m_a2 = _loc24_ * this.§?!6§.y - _loc25_ * this.§?!6§.x;
            _loc34_ = this.§?!6§.x * _loc26_ + this.§?!6§.y * _loc27_;
            if(b2Math.§'s§(this.§2-§ - this.§8X§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§%!i§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§'s§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§8X§)
            {
               _loc19_ = b2Math.§%!i§(_loc34_ - this.§8X§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§8X§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§2-§)
            {
               _loc19_ = b2Math.§%!i§(_loc34_ - this.§2-§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§2-§;
               _loc18_ = true;
            }
         }
         this.§#K§ = b2Math.§"]§(_loc20_,this.§;r§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§#K§.y - (_loc27_ + _loc23_) * this.§#K§.x;
         this.m_s2 = _loc24_ * this.§#K§.y - _loc25_ * this.§#K§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§#K§.x * _loc26_ + this.§#K§.y * _loc27_;
         _loc16_ = b2Math.§@!Q§(_loc16_,b2Math.§'s§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::9l;
            _loc13_ = b2internal::0A;
            _loc14_ = b2internal::?l;
            _loc15_ = b2internal::"!%;
            this.§6!S§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§6!S§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§6!S§.col2.x = this.§6!S§.col1.y;
            this.§6!S§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§6!S§.§5d§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::9l;
            _loc13_ = b2internal::0A;
            _loc14_ = b2internal::?l;
            _loc15_ = b2internal::"!%;
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
         var _loc30_:Number = _loc28_.x * this.§#K§.x + _loc28_.y * this.§?!6§.x;
         var _loc31_:Number = _loc28_.x * this.§#K§.y + _loc28_.y * this.§?!6§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::9l * _loc30_;
         _loc6_.y -= b2internal::9l * _loc31_;
         _loc7_ -= b2internal::?l * _loc32_;
         _loc8_.x += b2internal::0A * _loc30_;
         _loc8_.y += b2internal::0A * _loc31_;
         _loc9_ += b2internal::"!% * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§"d§();
         _loc5_.§"d§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
